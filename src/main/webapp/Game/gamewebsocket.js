var url = (window.location.protocol === "https:" ? "wss:" : "ws:") + "//" + window.location.host + window.location.pathname + "game-endpoint";

// WebSocket
var websocket = new WebSocket(url);
websocket.onopen = function () {
    console.log("WebSocket is connected.");
    ///webSocket.send("Connect");
    console.log(event.data);
};
websocket.onmessage = function (event) {
    console.log(event.data);
    var str = event.data;
};
websocket.onerror = function(e) {   };
websocket.onclose = function(e) {
    console.log("Session closed" + event.data);
    websocket.close();
};

//Functions for jsp
//send messages to server/room
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
        //TODO need joinername
        var message = { messageType: 'JOIN', message: input };
        websocket.send(JSON.stringify(message));
    }
}

/*
//get messages function
function getMessages() {
    websocket.send("GET");
}

//stop messages function
function stopMessages() {
    websocket.send("STOP");
    document.getElementById("btnGet").disabled = false;
    document.getElementById("btnStop").disabled = true;
}

function getSessionId() {
    document.getElementById("givenID").innerText += document.getElementById("gameID").value;
    document.getElementById("hlog").innerText = "Started lobby...\n";
    webSocket.send("GAMEID:" + document.getElementById("gameID").value);
}

function getClientId() {
    document.getElementById("jlog").innerText = "Attempting to join lobby...\n";
    webSocket.send("JOIN:" + document.getElementById("joinerID").value + ":" + document.getElementById("joinerName").value);
}
*/

function userList(){
  	webSocket.send("USER");
}