/*
 *	Host's Game scripts
 */
var modal = {}
modal.show = function(questionID)
{
	modal.activeID = questionID;
	$('#question').val($('#' + questionID).val());
	$('#answer').val($('#a' + questionID).val());
	$('#modal').modal({"overlayClose" : true});
	$('#t' + questionID).addClass("dirty").removeClass("clean")
}
modal.save = function()
{
	$('#' + modal.activeID).val($('#question').val())
	$('#a' + modal.activeID).val($('#answer').val())
}

var game = {}
game.init = function()
{
	$('#game').fadeIn(1000);
	$('#hostgame').hide()
	$('#stats').show()
	game.team_cnt = 2;
	game.team_up = 1;
	game.createScoreboard()
        game.current_points = 0;
}
game.createScoreboard = function()
{
	var content = "<table cellspacing=10><tbody><tr>";
	for(var i = 1; i <= game.team_cnt; i++)
	{
		content += "<th><input class='team-name' type='text' value='Team " + i + "' /></th>";
	}
	content += "</tr><tr>";
	for(var i = 1; i <= game.team_cnt; i++)
	{
		//content += "<td><h3 id='team" + i +"'>0</h3><span class='add-points' onclick='addPoints(" + i +  ")'>+</span> <span class='remove-points' onclick='removePoints(" + i +  ")'>-</span></td>";
		content += "<td><h3 id='team" + i +"'>0</h3></td><input class='add-points' onclick='game.addPoints(" + i +  ")' value='+' type='button' /> <input class='subtract-points' onclick='game.subtractPoints(" + i +  ")' type='button' value='-' /></td>";
	}
	content += "</tr></tbody></table>";
	$('#stats').html(content);

}

game.teamTurn = function() 
{
	if (game.team_up == 1)	{
		game.team_up = 2;
		document.getElementById("toggturn").value = "Go Team " + game.team_up.toString();;
	}
	else {
		game.team_up = 1;
		document.getElementById("toggturn").value = "Go Team " + game.team_up.toString();;
	}
}

game.addPoints = function(team)
{	
	var points = parseInt($('#team' + team).html()) + game.current_points;
	
	$('#team' + team).html(points);
	$(('#t' + game.current_questionID)).addClass("dirty");

	$(('#t' + game.current_questionID)).unbind('mouseover')
	$(('#t' + game.current_questionID)).unbind('mouseout')	
}

game.subtractPoints = function(team)
{
	var points = parseInt($('#team' + team).html()) - game.current_points;
	
	$('#team' + team).html(points);
	$(('#t' + game.current_questionID)).addClass("dirty");	
	$(('#t' + game.current_questionID)).unbind('mouseover')
	$(('#t' + game.current_questionID)).unbind('mouseout')	
}

var prompt = {}
prompt.show = function(questionID, points)
{
	game.current_points = points
	game.current_questionID = questionID
	$('#question').hide()
	$('#game').hide()
	$('#prompt').fadeIn(1000)
	$('#question').html($('#' + questionID).html())
	$('#answer').html($('#a' + questionID).html())
	if($('#question').html().length == 0)
		$('#correct-response').hide()
	else
		$('#correct-response').show();
}

prompt.hide = function()
{
	$('#prompt').hide();
	$('#game').show();
}

prompt.showQuestion = function()
{
	$('#question').fadeIn(1000)
}

/*
 *	Player Game scripts
 */
var pgame = {}
pgame.init = function()
{
	//$('#pgame').fadeIn(1000);
	$('#joingame').hide()
	$('#pstats').show()
	pgame.team_cnt = 2;
	pgame.createScoreboard()
        pgame.current_points = 0;
}
pgame.createScoreboard = function()
{
	var content = "<table cellspacing=10><tbody><tr>";
	for(var i = 1; i <= pgame.team_cnt; i++)
	{
		content += "<th><input class='team-name' type='text' value='Team " + i + "' /></th>";
	}
	content += "</tr><tr>";
	for(var i = 1; i <= pgame.team_cnt; i++)
	{
		content += "<td><h3 id='team" + i +"'>0</h3></td>";
		//<input class='add-points' onclick='game.addPoints(" + i +  ")' value='+' type='button' /> <input class='subtract-points' onclick='game.subtractPoints(" + i +  ")' type='button' value='-' /></td>";
	}
	content += "</tr></tbody></table>";
	$('#pstats').html(content);
}

/*
 *	Main Menu Scripting
 */
var menu = {}
menu.showMenu = function()
{
	$('#options').hide();
	$('#mainmenu').fadeIn(1000);
}

menu.hostServer = function()
{
	$('#mainmenu').hide();
	let code = Math.random().toString(36).substring(7);
	document.getElementById("gameID").innerHTML = code.toUpperCase();
	$('#hostgame').fadeIn(1000);
}
menu.startHosting = function()
{
	$('#tohost').hide();
	var str = document.getElementById("gameID").innerHTML.toString();
	document.getElementById("givenID").innerHTML += str;
	$('#hosting').show();
}

menu.joinServer = function()
{
	$('#mainmenu').hide();
	$('#joingame').fadeIn(1000);
}
menu.startJoining = function()
{
	$('#tojoin').hide();
	$('#joining').show();
}
menu.continueTeam = function() 
{
	$('#jsuccess').hide();
	$('#teamselect').fadeIn(1000);
}
menu.teamSelected = function() 
{
	$('#teamselect').hide();
	$('#jwait').show();
}

menu.joinError = function()
{
	$('#tojoin').hide();
	$('#joinerr').show();
}
menu.backToMain = function()
{
	$('#joinerr').hide();
	$('#tojoin').show();
	$('#joingame').hide();
	$('#mainmenu').fadeIn(1000);
}

menu.showOptions = function()
{
	$('#mainmenu').hide();
	$('#options').fadeIn(1000);
}