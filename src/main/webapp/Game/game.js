//Main Menu Scripting
var menu = {}
menu.hostMenu() = function()
{
	var mm = document.getElementById("mainmenu");
	var hm = document.getElementById("hostgame");
	mm.style.display = "none";
	hm.style.display = "block";
}

menu.joinMenu() = function()
{
	var mm = document.getElementById("mainmenu");
	var jm = document.getElementById("joingame");
	mm.style.display = "none";
	jm.style.display = "block";
}

function toggleDisplay() {
	var x = document.getElementById("hostgame");
	if (x.style.display === "none") {
	  x.style.display = "block";
	} else {
	  x.style.display = "none";
	}
}