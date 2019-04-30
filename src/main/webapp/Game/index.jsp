<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<!-- Tab Title -->
	<title>Jeopardy Champs</title>

	<meta name="description" content="Self-contained Jeopardy template." />
	<meta name="ROBOTS" content="NOODP" />

	<!-- TO BE IMPLEMENTED 
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" /> -->

	<!-- Reference to style sheet and JavaScript -->
	<link href="styles.css" rel="stylesheet" type="text/css">
	<script src="plugins.js" type="text/javascript"> </script>
	<script src="jeopardy.js" type="text/javascript"> </script>
	<script src="websocket.js" type="text/javascript"> </script>
</head>

<!-- Game Content -->

<body>
	<table id="game" cellspacing="5" cellpadding="0" class="hide">
		<thead>
			<tr>

				<!-- Catagories -->
				<th>Computer Science History</th>

				<th>Software Engineering </th>

				<th>Hardware</th>

				<th>Java</th>

				<th>Operating Systems</th>

			</tr>
		</thead>
		<tbody>
			<tr>
				<td id="tq00" class="cell clean" onclick="prompt.show('q00', 100);sendQuestionOptions('q00');">
					<h3>100</h3>
					<div class="hide">
						<div id="q00">
							<button style="inline-block">Who is Tim Berners Lee?</button>
						</div>
						<div id="aq00">
							The inventor of the World Wide Web.
						</div>
					</div>
				</td>

				<td id="tq01" class="cell clean" onclick="prompt.show('q01', 100);sendQuestionOptions('q01');">
					<h3>100</h3>
					<div class="hide">
						<div id="q01">
							<button style="inline-block">What is� Liskov substituion?</button>
						</div>
						<div id="aq01">
							The "L" in SOLID Principles.
						</div>
					</div>
				</td>

				<td id="tq02" class="cell clean" onclick="prompt.show('q02', 100);sendQuestionOptions('q02');">
					<h3>100</h3>
					<div class="hide">
						<div id="q02">
							<button style="inline-block">What is volatile memory?</button>
						<div id="aq02">
							Memory lost when a computer is turned off.
						</div>
					</div>
				</td>

				<td id="tq03" class="cell clean" onclick="prompt.show('q03', 100);sendQuestionOptions('q03');">
					<h3>100</h3>
					<div class="hide">
						<div id="q03">
							<button style="inline-block">What is Oak?</button>
						</div>
						<div id="aq03">
							Original name given for java.
						</div>
					</div>
				</td>

				<td id="tq04" class="cell clean" onclick="prompt.show('q04', 100);sendQuestionOptions('q04');">
					<h3>100</h3>
					<div class="hide">
						<div id="q04">
							<button style="inline-block">What is a kernel?</button>
						</div>
						<div id="aq04">
							The central part of an operating system.
						</div>
					</div>
				</td>
			</tr>

			<tr>
				<td id="tq10" class="cell clean" onclick="prompt.show('q10', 200);sendQuestionOptions('q10');">
					<h3>200</h3>
					<div class="hide">
						<div id="q10">

							<button style="inline-block">Who is Alan Turing?</button>

						</div>
						<div id="aq10">
							The father of Modern Computer Science.
						</div>
					</div>
				</td>

				<td id="tq11" class="cell clean" onclick="prompt.show('q11', 200);sendQuestionOptions('q11');">
					<h3>200</h3>
					<div class="hide">
						<div id="q11">
							
							<button style="inline-block">What is Software Engineering?</button>
							
							
						</div>
						<div id="aq11">
							The application of engineering to the development of software in a systematic method.�
						</div>
					</div>
				</td>

				<td id="tq12" class="cell clean" onclick="prompt.show('q12', 200);sendQuestionOptions('q12');">
					<h3>200</h3>
					<div class="hide">
						<div id="q12">

							<button style="inline-block">What is a solid state drive?</button>
						</div>
						<div id="aq12">
							storage device that uses integrated circuit assemblies as memory to store data persistently.
						</div>
					</div>
				</td>

				<td id="tq13" class="cell clean" onclick="prompt.show('q13', 200);sendQuestionOptions('q13');">
					<h3>200</h3>
					<div class="hide">
						<div id="q13">
							<button style="inline-block">How many is 4?</button>
		
						</div>
						<div id="aq13">
							The number of Java platforms.
						</div>
					</div>
				</td>

				<td id="tq14" class="cell clean" onclick="prompt.show('q14', 200);sendQuestionOptions('q14');">
					<h3>200</h3>
					<div class="hide">
						<div id="q14">
							<button style="inline-block">What is multithreading?</button>
							
						</div>
						<div id="aq14">
							Running more than one process in a program.
						</div>
					</div>
				</td>
			</tr>

			<tr>
				<td id="tq20" class="cell clean" onclick="prompt.show('q20', 300);sendQuestionOptions('q20');">
					<h3>300</h3>
					<div class="hide">
						<div id="q20">
	
							<button style="inline-block">What is Fortran?</button>
							
						</div>
						<div id="aq20">
							The first ever commercially available language.
						</div>
					</div>
				</td>

				<td id="tq21" class="cell clean" onclick="prompt.show('q21', 300);sendQuestionOptions('q21');">
					<h3>300</h3>
					<div class="hide">
						<div id="q21">
	
							
							<button style="inline-block">What is a sprint?</button>
						</div>
						<div id="aq21">
							A set period of time during which specific work has to be completed and made ready for
							review.
						</div>
					</div>
				</td>

				<td id="tq22" class="cell clean" onclick="prompt.show('q22', 300);sendQuestionOptions('q22');">
					<h3>300</h3>
					<div class="hide">
						<div id="q22">
							
							<button style="inline-block">What is a motherboard?</button>
							
						</div>
						<div id="aq22">
							Device that houses the RAM and CPU
						</div>
					</div>
				</td>

				<td id="tq23" class="cell clean" onclick="prompt.show('q23', 300);sendQuestionOptions('q23');">
					<h3>300</h3>
					<div class="hide">
						<div id="q23">
							<button style="inline-block">Who is James Gosling, Oracle?</button>
						</div>
						<div id="aq23">
							The creator of java?
						</div>
					</div>
				</td>

				<td id="tq24" class="cell clean" onclick="prompt.show('q24', 300);sendQuestionOptions('q24');">
					<h3>300</h3>
					<div class="hide">
						<div id="q24">
							<button style="inline-block">What is Linux?</button>

						</div>
						<div id="aq24">
							Most popular open-source OS
						</div>
					</div>
				</td>
			</tr>

			<tr>
				<td id="tq30" class="cell clean" onclick="prompt.show('q30', 400);sendQuestionOptions('q30');">
					<h3>400</h3>
					<div class="hide">
						<div id="q30">
							<button style="inline-block">What is the UNIVAC I?</button>
						</div>
						<div id="aq30">
							The first commercially available computer.
						</div>
					</div>
				</td>

				<td id="tq31" class="cell clean" onclick="prompt.show('q31', 400);sendQuestionOptions('q31');">
					<h3>400</h3>
					<div class="hide">
						<div id="q31">
							
							<button style="inline-block">What is a decorator pattern?</button>
							
						</div>
						<div id="aq31">
							A design pattern that allows behavior to be added to an individual object, dynamically,
							without affecting the behavior of the other objects from the same class.
						</div>
					</div>
				</td>

				<td id="tq32" class="cell clean" onclick="prompt.show('q32', 400);sendQuestionOptions('q32');">
					<h3>400</h3>
					<div class="hide">
						<div id="q32">
							<button style="inline-block">What is the ALU?</button>
							
						</div>
						<div id="aq32">
							Part of CPU responsible for arithmetic and logic operations.
						</div>
					</div>
				</td>

				<td id="tq33" class="cell clean" onclick="prompt.show('q33', 400);sendQuestionOptions('q33');">
					<h3>400</h3>
					<div class="hide">
						<div id="q33">
							
							<button style="inline-block">What is a Java applet?</button>
							
						</div>
						<div id="aq33">
							Java embedded in a small web applicaton.
						</div>
					</div>
				</td>

				<td id="tq34" class="cell clean" onclick="prompt.show('q34', 400);sendQuestionOptions('q34');">
					<h3>400</h3>
					<div class="hide">
						<div id="q34">
							<button style="inline-block">What is a single processor system?</button>
	
						</div>
						<div id="aq34">
							System with more than one processor
						</div>
					</div>
				</td>
			</tr>

			<tr>
				<td id="tq40" class="cell clean" onclick="prompt.show('q40', 500);sendQuestionOptions('q40');">
					<h3>500</h3>
					<div class="hide">
						<div id="q40">
							<button style="inline-block">Who is Charles Babbage?</button>
						</div>
						<div id="aq40">
							Creator the first mechanical computer ever, known as the difference engine?
						</div>
					</div>
				</td>

				<td id="tq41" class="cell clean" onclick="prompt.show('q41', 500);sendQuestionOptions('q41');">
					<h3>500</h3>
					<div class="hide">
						<div id="q41">
							
							<button style="inline-block">Who is Dr. Ted Lehr?</button>
							
						</div>
						<div id="aq41">
							The best software engineering teacher.
						</div>
					</div>
				</td>

				<td id="tq42" class="cell clean" onclick="prompt.show('q42', 500);sendQuestionOptions('q42');">
					<h3>500</h3>
					<div class="hide">
						<div id="q42">
							<button style="inline-block">What is a microprocessor?</button>
						</div>
						<div id="aq42">
							An integrated circuit that contains all the functions of a central processing unit of a
							computer
						</div>
					</div>
				</td>

				<td id="tq43" class="cell clean" onclick="prompt.show('q43', 500);sendQuestionOptions('q43');">
					<h3>500</h3>
					<div class="hide">
						<div id="q43">
							
							<button style="inline-block">What is runtime polymorphism?</button>
							
						</div>
						<div id="aq43">
							A process in which a call to an overridden method is resolved at runtime rather than at
							compile-time.
						</div>
					</div>
				</td>

				<td id="tq44" class="cell clean" onclick="prompt.show('q44', 500);sendQuestionOptions('q44');">
					<h3>500</h3>
					<div class="hide">
						<div id="q44">
							What is GUI?</button>
							<button style="inline-block">
						</div>
						<div id="aq44">
							System that uses buttons and icons rather than a command line.
						</div>
					</div>
				</td>
			</tr>
		</tbody>
	</table>

	<div id="stats">
	</div>

	<div id="prompt">
		<h2 id="answer"></h2>
		<p><span id="correct-response"><a href="javascript:prompt.showQuestion()">View correct response</a>
				&nbsp;&nbsp;&nbsp;&nbsp; </span><a href="javascript:prompt.hide()">Continue &raquo;</a></p>

		<h2 id="question"></h2>
	</div>

	<!-- Player Screen -->
	
	<div id="pprompt">
		<h2 id="panswer"></h2>
		<h2 id="pquestion"></h2>
	</div>

	<div id="pstats">
	</div>

	<!-- Main Menu -->
	<div id="mainmenu">
		<h1><img src="https://fontmeme.com/permalink/190429/73cf41c2a34cebabe55271a20ff544a2.png" alt="jeopardy-font"
				border="0"></h1>
		<ul>
			<li><a class="round green" onclick="menu.hostServer()">Host Game<span class="round">Create a new game
						lobby</span> </a></li>
			<li><a class="round red" onclick="menu.joinServer()">Join Game<span class="round">Join an existing game
					</span> </a></li>
			<li><a class="round yellow" onclick="menu.showOptions()">Options<span class="round">Modify game
						options</span></a> </li>
		</ul>

		<div class="clear"></div>
	</div>

	<!-- Host  -->
	<div id="hostgame" class="hide">
		<h1><img src="https://fontmeme.com/permalink/190429/064cfd4346b7073442d822b1b422809a.png" alt="jeopardy-font"
				border="0"></h1>
		<div id="tohost">
			<h2>Room Code:</h2>
			<h2 id="gameID"></h2>
			<input class="submit" type="button" id="ssubmit" value="Host Session"
				onclick="menu.startHosting();hostMessage();" />
		</div>

		<div id="hosting" class="hide">
			<h2 id="givenID">Room Code: </h2>
			<textarea id="hlog" cols="45" rows="5" type="text" readonly></textarea>
			<table>
					<tr>
					  <th>Team 1</th>
					  <th>Team 2</th>
					</tr>
					<tr>
					  <td><ul id ="tm1"></ul></td>
					  <td><ul id ="tm2"></ul></td>
					</tr>
				  </table>
			<input class="submit" type="button" id="startsubmit" value="Start Game" onclick="game.init(); startGame();" />
		</div>

		<div class="clear"></div>
	</div>

	<!-- Join  -->
	<div id="joingame" class="hide">
		<h1><img src="https://fontmeme.com/permalink/190429/e2d1762c1c196ecc738d11895babdae8.png" alt="jeopardy-font"
				border="0"></h1>
		<div id="tojoin">
			<p>Enter name:</p>
			<input type="text" id="joinerName">
			<p>Enter Room Code:</p>
			<input type="text" id="joinerID" maxlength="6">
			<input class="submit" type="button" id="jsubmit" value="Join Session" onclick="joinMessage()" />
		</div>
		<div id="joining" class="hide">
			<div id="jsuccess" >
				<p>Successfully Joined!</p> 
				<input class="submit" type="button" id="contTeam" value="Continue!" onclick="menu.continueTeam()" />
			</div>
			<div id="teamselect" class="hide">
				<li><a class="round red" onclick="teamSelectMessage('Team1'); menu.teamSelected();">Team 1<span class="round">Join Team 1!</span></a></li>
				<li><a class="round blue" onclick="teamSelectMessage('Team2'); menu.teamSelected();">Team 2<span class="round">Join Team 2!</span></a></li>
			</div>
			<div id="jwait" class="hide"> <div class="loader"></div> <h2>Please wait...</h2></div>
		</div>
		<div id="joinerr" class="hide">
			<p>Invalid Room Code!</p>
			<input class="submit" type="button" id="jbacksubmit" value="Back to Main Menu"
				onclick="menu.backToMain()" />
		</div>
		<div class="clear"></div>
	</div>

	<!-- Options Menu -->
	<div id="options" class="hide">
		<h1><img src="https://fontmeme.com/permalink/190429/b7b2d1346aa410dbc345db3d74a4f128.png" alt="jeopardy-font"
				border="0"></h1>
		<input class="submit" type="button" id="saveopt" value="Save" onclick="menu.showMenu()" />
		<p>Press F11 for full-screen mode</p>

		<div class="clear"></div>
	</div>

</body>

</html>