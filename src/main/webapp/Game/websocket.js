var url = (window.location.protocol === "https:" ? "wss:" : "ws:") + "//" + window.location.host + window.location.pathname + "game-endpoint";

//set up websocket

var websocket = new WebSocket(url);
websocket.onopen = function () {
    console.log("WebSocket is connected.");
};
websocket.onmessage = function (event) {
    console.log(event.data);
    var str = event.data.toString();
    
    if (str.startsWith("HOST:")) {
        document.getElementById("hlog").value += str.slice(5);
    }
    else if (str.startsWith("JOIN:")) {
        menu.startJoining(); //from game.js
    }
    else if(str.startsWith("ERROR:")) {
        menu.joinError(); //from game.js
    }
    else if(str.startsWith("TEAM")) {
        if (str.includes(":1:")) {
            var nam = str.slice(7);
            document.getElementById("tm1").innerHTML += "<li>" + nam + "</li>";
        }
        else if(str.includes(":2:")) {
            var nam = str.slice(7);
            document.getElementById("tm2").innerHTML += "<li>" + nam + "</li>";
        }
    }
    else if(str.startsWith("START")) {
        pgame.init();
    }
};
websocket.onerror = function(e) {   };
websocket.onclose = function(e) {
    console.log("Session closed, " + event.data);
    websocket.close();
    alert("Connection lost.");
};


/**
 * HOST Message to server functions
 */

function hostMessage() {
    if (websocket != null && websocket.readyState == 1) {
        var input = document.getElementById("gameID").innerHTML.toString();
        var message = { messageType: 'HOST', message: input };
        websocket.send(JSON.stringify(message));
    }
}

function startGame() {
    if (websocket != null && websocket.readyState == 1) {
        input = "START";
        var message = { messageType: 'BROADCAST', message: input };
        websocket.send(JSON.stringify(message));
    }
}

/**
 * PLAYER Message to server functions
 */
function joinMessage() {
    var jname = document.getElementById("joinerName");
    if(jname && jname.value) {
        if (websocket != null && websocket.readyState == 1) {
            var input = jname.value;
            input += ":";
            input += document.getElementById("joinerID").value;
            var message = { messageType: 'JOIN', message: input };
            websocket.send(JSON.stringify(message));
        }
    }
}

function teamSelectMessage(teamX) {
    if (websocket != null && websocket.readyState == 1) {
        if (teamX == "Team1") {
            var input = "1";
            var message = { messageType: 'TEAM', message: input };
            websocket.send(JSON.stringify(message));
        }
        else if (teamX == "Team2") {
            var input = "2";
            var message = { messageType: 'TEAM', message: input };
            websocket.send(JSON.stringify(message));
        }
    }
} 