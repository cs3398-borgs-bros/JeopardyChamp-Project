<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- Tab Title -->
<title>Testing Websockets</title>

<meta name="description" content="Self-contained Jeopardy template. />
<meta name="ROBOTS" content="NOODP" />

<!-- TO BE IMPLEMENTED 
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" /> -->

<!-- Reference to style sheet and JavaScript -->
<link href="style.css" rel="stylesheet" type="text/css">
<script src="game.js" type="text/javascript"> </script>
<script src="gamewebsocket.js" type="text/javascript"> </script>
</head>

<!-- Content of Game and Menus. -->
<!-- NOTE: menus were previously hidden with jquery libraries and css. 
		The "onclick=" functions were removed, need to create functions for
		testing.
	-->
<body>

<!-- Main Menu -->
<div id="mainmenu">
	<h1>Jeopardy Champ!</h1>
	<input class="submit" type="button" id="hostsubmit" value="Host Lobby" onclick="toggleDisplay()" />
	<p></p>
	<input class="submit" type="button" id="joinsubmit" value="Join Game" onclick="" />
	<p></p>
	<input class="submit" type="button" id="optsubmit" value="Options" onclick="" />
	
	<div class="clear"></div>
</div>

<!-- Host  -->
<div id="hostgame" style="display:none;">
	<h1>Host!</h1>
	<div id ="tohost">
		<p>Enter host name:</p>
		<input type="text" id="gameID" maxlength="6">
		<input class="submit" type="button" id="ssubmit" value="Host Session" onclick="" />
	</div>

	<div id ="hosting" >
		<h2 id="givenID">Room: </h2>
		<textarea id="hlog" cols="45" rows="5" type="text" readonly></textarea>
		<input class="submit" type="button" id="startsubmit" value="Start Game" onclick="" />
	</div>

	<div class="clear"></div>
</div>

<!-- Client  -->
<div id="joingame" style="display:none;">
	<h1>Join Game</h1>
	<div id ="tojoin">
			<p>Enter name:</p>
			<input type="text" id="joinerName">
			<p>Enter host name:</p>
			<input type="text" id="joinerID" maxlength="6">
			<input class="submit" type="button" id="jsubmit" value="Join Session" onclick="" />
		</div>
	<div id ="joining" >
		<textarea id="jlog" cols="45" rows="5" type="text" readonly></textarea>
	</div>
	<div class="clear"></div>
</div>

</body>
</html>
