//Main Menu Scripting
function hostMenu() {
	var mm = document.getElementById("mainmenu");
	var hm = document.getElementById("hostgame");
	mm.style.display = "none";
	hm.style.display = "block";
}

function generateCode() {
	var c = document.getElementById("gameID");
	let code = Math.random().toString(36).substring(7);
	c.innerHTML = code;
}

function hostStart() {
	var hc = document.getElementById("gameID");
	var str = hc.innerHTML.toString();
	document.getElementById("givenID").innerHTML += str;

	var th= document.getElementById("tohost");
	th.style.display = "none";
	var h = document.getElementById("hosting");
	h.style.display = "block";
}

function joinMenu() {
	var mm = document.getElementById("mainmenu");
	var jm = document.getElementById("joingame");
	mm.style.display = "none";
	jm.style.display = "block";
}

function joinStart() {
	var hc = document.getElementById("gameID");
	var str = hc.innerHTML.toString();
	document.getElementById("givenID").innerHTML += str;

	var tj= document.getElementById("tojoin");
	tj.style.display = "none";
	var j = document.getElementById("joining");
	j.style.display = "block";
}

function toggleDisplay() {
	var x = document.getElementById("hostgame");
	if (x.style.display === "none") {
	  x.style.display = "block";
	} else {
	  x.style.display = "none";
	}
}

