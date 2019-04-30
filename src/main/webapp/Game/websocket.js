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

function sendQuestionOptions(qopt) {
    if (websocket != null && websocket.readyState == 1) {
        var content = "";
        if (qopt.includes("q00"))
            content += "<div id='q00'><button style='inline-block'>Who is Tim Berners Lee?</button><button style='inline-block'>Who is James Gosling?</button><button style='inline-block'>Who is Bjarne Stroustrup?</button><button style='inline-block'>Who is Guido van Rossum?</button></div>";
        else if (qopt.includes("q01"))
            ;
        else if (qopt.includes("q02"))
            ;
        else if (qopt.includes("q03"))
            ;
        else if (qopt.includes("q04"))
            ;
        else if (qopt.includes("q10"))
            ;
        else if (qopt.includes("q11"))
            ;
        else if (qopt.includes("q12"))
            ;
        else if (qopt.includes("q13"))
            ;
        else if (qopt.includes("q14"))
            ;
        else if (qopt.includes("q15"))
            ;
        else if (qopt.includes("q16"))
            ;
        else if (qopt.includes("q17"))
            ;
        else if (qopt.includes("q18"))
            ;
        else if (qopt.includes("q19"))
            ;
        else if (qopt.includes("q20"))
            ;
        else if (qopt.includes("q21"))
            ;
        else if (qopt.includes("q22"))
            ;
        else if (qopt.includes("q23"))
            ;
        else if (qopt.includes("q24"))
            ;
        else if (qopt.includes("q25"))
            ;
        else if (qopt.includes("q26"))
            ;
        else if (qopt.includes("q27"))
            ;
        else if (qopt.includes("q28"))
            ;
        else if (qopt.includes("q29"))
            ;
        else if (qopt.includes("q30"))
            ;
        else if (qopt.includes("q31"))
            ;
        else if (qopt.includes("q32"))
            ;
        else if (qopt.includes("q33"))
            ;
        else if (qopt.includes("q34"))
            ;
        else if (qopt.includes("q35"))
            ;
        else if (qopt.includes("q36"))
            ;
        else if (qopt.includes("q37"))
            ;
        else if (qopt.includes("q38"))
            ;
        else if (qopt.includes("q39"))
            ;
        else if (qopt.includes("q40"))
            ;
        else if (qopt.includes("q41"))
            ;
        else if (qopt.includes("q42"))
            ;
        else if (qopt.includes("q43"))
            ;
        else if (qopt.includes("q44"))
            ;


        
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

function sendAnswerVote() {
    if (websocket != null && websocket.readyState == 1) {
        //TODO
    }
}