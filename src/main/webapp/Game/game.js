//Main Menu Scripting
var menu = {}
menu.showMenu = function()
{
	$('#options').hide();
	$('#mainmenu').fadeIn(1000);
}

menu.hostServer = function()
{
	$('#mainmenu').hide();
	$('#hostgame').fadeIn(1000);
}

menu.joinServer = function()
{
	$('#mainmenu').hide();
	$('#joingame').fadeIn(1000);
}
menu.showOptions = function()
{
	$('#mainmenu').hide();
	$('#options').fadeIn(1000);
}

menu.startHosting = function()
{
	$('#tohost').hide();
	$('#hosting').show();
}

menu.startJoining = function()
{
	$('#tojoin').hide();
	$('#joining').show();
}
