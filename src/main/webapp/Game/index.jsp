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
<script src="game.js" type="text/javascript"> </script>
<script src="gamewebsocket.js" type="text/javascript"> </script>
</head>

<!-- Game Content -->
<body>

<!-- Main Menu -->
<div id="mainmenu">
	<h1>Jeopardy Champ!</h1>
	<input class="submit" type="button" id="hostsubmit" value="Host Lobby" onclick="menu.hostServer()" />
	<p></p>
	<input class="submit" type="button" id="joinsubmit" value="Join Game" onclick="menu.joinServer()" />
	<p></p>
	<input class="submit" type="button" id="optsubmit" value="Options" onclick="menu.showOptions()" />
	
	<div class="clear"></div>
</div>

<!-- Host  -->
<div id="hostgame" class="hide">
	<h1>Host!</h1>
	<div id ="tohost">
		<p>Enter host name:</p>
		<input type="text" id="gameID" maxlength="6">
		<input class="submit" type="button" id="ssubmit" value="Host Session" onclick="menu.startHosting();getSessionId();" />
	</div>

	<div id ="hosting" class="hide">
		<h2 id="givenID">Room: </h2>
		<textarea id="hlog" cols="45" rows="5" type="text" readonly></textarea>
		<input class="submit" type="button" id="startsubmit" value="Start Game" onclick="game.init()" />
	</div>

	<div class="clear"></div>
</div>

<!-- Client  -->
<div id="joingame" class="hide">
	<h1>Join Game</h1>
	<div id ="tojoin">
			<p>Enter name:</p>
			<input type="text" id="joinerName">
			<p>Enter host name:</p>
			<input type="text" id="joinerID" maxlength="6">
			<input class="submit" type="button" id="jsubmit" value="Join Session" onclick="menu.startJoining();getClientId();" />
		</div>
	<div id ="joining" class="hide">
		<textarea id="jlog" cols="45" rows="5" type="text" readonly></textarea>
	</div>
	<div class="clear"></div>
</div>

<!-- Options Menu -->
<div id="options" class="hide">
	<h1>Options</h1>
	<label>Number of Teams</label>
	<select name="teams" id="teams">
		<option value="2">2 teams</option>
		<option value="3">3 teams</option>
		<option value="4">4 teams</option>
		<option value="5">5 teams</option>
		<option value="6">6 teams</option>
		<option value="7">7 teams</option>
		<option value="8">8 teams</option>
	</select>
	<input class="submit" type="button" id="saveopt" value="Save" onclick="menu.showMenu()" />
	<p align="center">Press F11 for full-screen mode</p>
	
	<div class="clear"></div>
</div>

</body>
</html>
