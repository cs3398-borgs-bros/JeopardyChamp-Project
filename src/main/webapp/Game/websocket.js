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
    else if (str.startsWith("QUESTIONS:")) {
        document.getElementById("pprompt").innerHTML = str.slice(10);
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
            content += "<div id='q01'><button style='inline-block'>What is the Single responsibility principle?</button><button style='inline-block'>What is Interface segregation?</button><button style='inline-block'>What is� Liskov substituion?</button><button style='inline-block'>What is Let the user access everything?</button></div>";
        else if (qopt.includes("q02"))
            content += "<div id='q02'><button style='inline-block'>What is non-volatile memory?</button><button style='inline-block'>What is volatile memory?</button><button style='inline-block'>What is HDD?</button><button style='inline-block'>What is SDD?</button></div>";
        else if (qopt.includes("q03"))
            content += "<div id='q03'><button style='inline-block'>What is Bark?</button><button style='inline-block'>What is Pine?</button><button style='inline-block'>What is Leaf?</button><button style='inline-block'>What is Oak?</button></div>";
        else if (qopt.includes("q04"))
            content += "<div id='q04'><button style='inline-block'>What is a kernel?</button><button style='inline-block'>What is the bus?</button><button style='inline-block'>What is a device driver?</button><button style='inline-block'>What is a GUI?</button></div>";
        else if (qopt.includes("q10"))
            content += "<div id='q10'><button style='inline-block'>Who is Watts Humphrey?</button><button style='inline-block'>Who is William Petrie?</button><button style='inline-block'>Who is Alan Turing?</button><button style='inline-block'>Who is Grady Booch?</button></div>";
        else if (qopt.includes("q11"))
            content += "<div id='q11'><button style='inline-block'>What is Aerospce Engineering?</button><button style='inline-block'>What is Software Engineering?</button>        <button style='inline-block'>What is Mechanical Engineering?</button><button style='inline-block'>What is Civil Engineering?</button></div>";
        else if (qopt.includes("q12"))
            content += "<div id='q12'><button style='inline-block'>What is cloud storage? </button><button style='inline-block'>What is a hard disk drive?</button><button style='inline-block'>What is RAM?</button><button style='inline-block'>What is a solid state drive?</button></div>";
        else if (qopt.includes("q13"))
            content += "<div id='q13'><button style='inline-block'>How many is 4?</button><button style='inline-block'>How many is 10?</button><button style='inline-block'>How many is 50?</button><button style='inline-block'>How many is 1?</button></div>";
        else if (qopt.includes("q14"))
            content += "<div id='q14'><button style='inline-block'>What is multitasking?</button><button style='inline-block'>What is a function?</button><button style='inline-block'>What is multithreading?</button><button style='inline-block'>What is multiprogramming?</button></div>";
        else if (qopt.includes("q20"))
            content += "<div id='q20'><button style='inline-block'>What is C++?</button><button style='inline-block'>What is Fortran?</button><button style='inline-block'>What is Java?</button><button style='inline-block'>What is C?</button></div>";
        else if (qopt.includes("q21"))
            content += "<div id='q21'><button style='inline-block'>What is a user issue? </button><button style='inline-block'>What is an epic?</button><button style='inline-block'>What is a task?</button><button style='inline-block'>What is a sprint?</button></div>";
        else if (qopt.includes("q22"))
            content += "<div id='q22'><button style='inline-block'>What is the graphics card?</button><button style='inline-block'>What is a power supply?</button><button style='inline-block'>What is a motherboard?</button><button style='inline-block'>What is the hard drive enclosure?</button></div>";
        else if (qopt.includes("q23"))
            content += "<div id='q23'><button style='inline-block'>Who is Tim Cook, Apple?</button><button style='inline-block'>Who is Satya Nadella, Microsoft?</button><button style='inline-block'>Who is Sundar Pichai, Google?</button><button style='inline-block'>Who is James Gosling, Oracle?</button></div>";
        else if (qopt.includes("q24"))
            content += "<div id='q24'><button style='inline-block'>What is Linux?</button><button style='inline-block'>What is OpenBSD?</button><button style='inline-block'>What is FreeBSD?</button><button style='inline-block'>What is Qubes OS?</button></div>";
        else if (qopt.includes("q30"))
            content += "<div id='q30'><button style='inline-block'>What is IBM701? </button><button style='inline-block'>What is the IBM PC?</button><button style='inline-block'>What is the Z1?</button><button style='inline-block'>What is the UNIVAC I?</button></div>";
        else if (qopt.includes("q31"))
            content += "<div id='q31'><button style='inline-block'>What is adapter pattern?</button><button style='inline-block'>What is a decorator pattern?</button><button style='inline-block'>What is composite pattern?</button><button style='inline-block'>What is facade pattern?</button></div>";
        else if (qopt.includes("q32"))
            content += "<div id='q32'><button style='inline-block'>What is the ALU?</button><button style='inline-block'>What is the CPU?</button><button style='inline-block'>What is the GPU?</button><button style='inline-block'>What is the bus?</button></div>";
        else if (qopt.includes("q33"))
            content += "<div id='q33'><button style='inline-block'>What is a embedded server?</button><button style='inline-block'>What is a Java applet?</button><button style='inline-block'>What is a embedded system?</button><button style='inline-block'>What is java point?</button></div>";
        else if (qopt.includes("q34"))
            content += "<div id='q34'><button style='inline-block'>What is a single processor system?</button><button style='inline-block'>What is a mega system?</button><button style='inline-block'>What is a multiprocessor system?</button><button style='inline-block'>What is multicore system?</button></div>";
        else if (qopt.includes("q40"))
            content += "<div id='q40'><button style='inline-block'>Who is Charles Babbage?</button><button style='inline-block'>Who is Alan Turing?</button><button style='inline-block'>Who is Nikola Tesla?</button><button style='inline-block'>Who is Lord Byron?</button></div>";
        else if (qopt.includes("q41"))
            content += "<div id='q41'><button style='inline-block'>Who is Dr. Guowei Yang?</button><button style='inline-block'>Who is Dr. Rodion Podorozhny?</button><button style='inline-block'>Who is Dr. Ted Lehr?</button><button style='inline-block'>Who is Dr. Lee-Song Koh?</button></div>";
        else if (qopt.includes("q42"))
            content += "<div id='q42'><button style='inline-block'>What is a graphics processor?</button><button style='inline-block'>What is a single processor?</button><button style='inline-block'>What is a multicore processor?</button><button style='inline-block'>What is a microprocessor?</button></div>";
        else if (qopt.includes("q43"))
            content += "<div id='q43'><button style='inline-block'>What is compile time polymorphism?</button><button style='inline-block'>What is runtime polymorphism?</button><button style='inline-block'>What is a override?</button><button style='inline-block'>What is a error?</button></div>";
        else if (qopt.includes("q44"))
            content += "<div id='q44'><button style='inline-block'>What is CMD?</button><button style='inline-block'>What is GUI?</button><button style='inline-block'>What is an application?</button><button style='inline-block'>What is an website?</button></div>";

        var message = { messageType: 'BROADCAST', message: content };
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

function sendAnswerVote() {
    if (websocket != null && websocket.readyState == 1) {
        //TODO
    }
}