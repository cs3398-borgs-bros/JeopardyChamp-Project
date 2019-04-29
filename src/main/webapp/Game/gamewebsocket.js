var url = (window.location.protocol === "https:" ? "wss:" : "ws:") + "//" + window.location.host + window.location.pathname + "game-endpoint";

//set up websocket

var webSocket = new WebSocket(url);
webSocket.onopen = function () {
    console.log("WebSocket is connected.");
    console.log(event.data);
};
webSocket.onmessage = function (event) {
    console.log(event.data);
    var str = event.data.toString();
    if (str.startsWith("JOIN:")) {
        document.getElementById("hlog").value += str.slice(5);
        document.getElementById("jlog").value += str.slice(5);
    }
    
};
websocket.onerror = function(e) {   };
websocket.onclose = function(e) {
    console.log("Session closed, " + event.data);
    websocket.close();
};


/**
 * Message to server functions
 */

function hostMessage() {
    if (websocket != null && websocket.readyState == 1) {
        var input = document.getElementById("gameID").innerHTML.toString();
        var message = { messageType: 'HOST', message: input };
        websocket.send(JSON.stringify(message));
    }
}

function joinMessage() {
    if (websocket != null && websocket.readyState == 1) {
        var input = document.getElementById("joinerName").value;
        input += ":";
        input += document.getElementById("joinerID").value;
        var message = { messageType: 'JOIN', message: input };
        websocket.send(JSON.stringify(message));
    }
}