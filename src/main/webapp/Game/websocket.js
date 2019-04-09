//set up websocket
var url = (window.location.protocol === "https:" ? "wss:" : "ws:") + "//" + window.location.host + window.location.pathname + "message-endpoint";
var webSocket = new WebSocket(url);

 webSocket.onopen = function () {
    console.log("WebSocket is connected.");
    
    webSocket.send("Connect");
    console.log(event.data);
    var user = document.getElementByID("test");
    test.innerHTML = test.innerHTML + ", " + event.data;
};
    
webSocket.onmessage = function (event) {
    console.log(event.data);
    var test = document.getElementById("users");
    test.innerHTML = test.innerHTML + event.data;
};
    
//get & stop messages
function getMessages() {
    webSocket.send("GET");
    document.getElementById("btnGet").disabled = true;
    document.getElementById("btnStop").disabled = false;
}
    
function stopMessages() {
    webSocket.send("STOP");
    document.getElementById("btnGet").disabled = false;
    document.getElementById("btnStop").disabled = true;
}
    
function userList(){
  	webSocket.send("USER");
}