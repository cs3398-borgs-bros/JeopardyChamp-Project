//Main Menu Scripting
var menu = {}
menu.doSomething = function()
{
	;
}

function toggleDisplay() {
	var x = document.getElementById("hostgame");
	if (x.style.display === "none") {
	  x.style.display = "block";
	} else {
	  x.style.display = "none";
	}
  }