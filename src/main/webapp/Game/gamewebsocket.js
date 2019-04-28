var url = (window.location.protocol === "https:" ? "wss:" : "ws:") + "//" + window.location.host + window.location.pathname + "game-endpoint";

//set up websocket
var webSocket = new WebSocket(url);
webSocket.onopen = function () {
    console.log("WebSocket is connected.");
    webSocket.send("Connect");
    console.log(event.data);
};
webSocket.onmessage = function (event) {
    console.log(event.data);
    var str = event.data;
    if (str.startsWith("JOINED")) {
        var arr = str.split(":");
        document.getElementById("hlog").innerText += arr[1] + " has joined.\n";
        document.getElementById("jlog").innerText += "You have joined " + arr[0] + "..";
    } else if (str.equals("NOTFOUND")) {
        document.getElementById("jlog").innerText += "Unable to join session..";
    }
    
};

//get messages function
function getMessages() {
    webSocket.send("GET");
}

//stop messages function
function stopMessages() {
    webSocket.send("STOP");
    document.getElementById("btnGet").disabled = false;
    document.getElementById("btnStop").disabled = true;
}

function getSessionId() {
    document.getElementById("givenID").innerText += document.getElementById("gameID").value;
    document.getElementById("hlog").innerText = "Started lobby...\n";
    webSocket.send("GAMEID:" + document.getElementById("gameID").value);
}

function getClientId() {
    webSocket.send("JOIN:" + document.getElementById("joinerID").value + ":" + document.getElementById("joinerName").value);
}

function userList(){
  	webSocket.send("USER");
}