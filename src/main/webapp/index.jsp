<html>
    <body>
    	<p>
    	Users Online
    	<button id="users" onclick="userList()">Users</button>
    	</p>
    
        <h2>Tomcat-based WebSocket on Heroku Test</h2>
        <button id="btnGet" onclick="getMessages()">Get Messages</button>
        <button id="btnStop" onclick="stopMessages()" disabled="true">Stop Messages</button>
        <p id="demo"></p>
    </body>
</html>

<script type="text/javascript">
    //set up websocket
    var url = (window.location.protocol === "https:" ? "wss:" : "ws:") + "//" + window.location.host + window.location.pathname + "message-endpoint";
    var webSocket = new WebSocket(url);
    
    webSocket.onopen = function () {
        console.log("WebSocket is connected.");
        
        webSocket.send("Connect");
        console.log(event.data);
        var user = document.getElementByID("demo");
        demo.innerHTML = demo.innerHTML + ", " + event.data;
    };
    
    webSocket.onmessage = function (event) {
        console.log(event.data);
        var demo = document.getElementById("users");
        demo.innerHTML = demo.innerHTML + event.data;
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
</script>