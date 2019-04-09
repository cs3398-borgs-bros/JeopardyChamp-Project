<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- Tab Title -->
<title>Jeopardy Champs</title>

<meta name="description" content="Self-contained Jeopardy template. />
<meta name="ROBOTS" content="NOODP" />

<!-- TO BE IMPLEMENTED 
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" /> -->

<!-- Reference to style sheet and JavaScript -->
<link href="style.css" rel="stylesheet" type="text/css" >
<script src="game.js" type="text/javascript"> </script>
<script src="gamewebsocket.js" type="text/javascript"> </script>
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
			
				
					<td id="tq00" class="cell clean" onclick="prompt.show('q00', 100)">
						<h3>100</h3>
						<div class="hide">
							<div id="q00">
								<button style="inline-block">Who is Tim Berners Lee?</button>
								  <button style="inline-block">Who is James Gosling?</button>
								<button style="inline-block">Who is Bjarne Stroustrup?�</button>
								<button style="inline-block">Who is Guido van Rossum?�</button>
							</div>
							<div id="aq00">
								The inventor of the World Wide Web.
							</div>
						</div>
					</td>
				
			
				
					<td id="tq01" class="cell clean" onclick="prompt.show('q01', 100)">
						<h3>100</h3>
						<div class="hide">
							<div id="q01">
								<button style="inline-block">What is the Single responsibility principle?</button>
								  <button style="inline-block">What is Interface segregation?</button>
								<button style="inline-block">What is� Liskov substituion?�</button>
								<button style="inline-block">What is Let the user access everything?�</button>
							</div>
							<div id="aq01">
								The "L" in SOLID Principles.
							</div>
						</div>
					</td>
				
			
				
					<td id="tq02" class="cell clean" onclick="prompt.show('q02', 100)">
						<h3>100</h3>
						<div class="hide">
							<div id="q02">
								<button style="inline-block">What is non-volatile memory?�</button>
								  <button style="inline-block">What is volatile memory?</button>
								<button style="inline-block">What is HDD?��</button>
								<button style="inline-block">What is SDD?</button>
							</div>
							<div id="aq02">
								Memory lost when a computer is turned off.
							</div>
						</div>
					</td>
				
			
				
					<td id="tq03" class="cell clean" onclick="prompt.show('q03', 100)">
						<h3>100</h3>
						<div class="hide">
							<div id="q03">
								<button style="inline-block">What is Bark?�</button>
								  <button style="inline-block">What is Pine?</button>
								<button style="inline-block">What is Leaf?��</button>
								<button style="inline-block">What is Oak?�</button>
							</div>
							<div id="aq03">
								Original name given for java.
							</div>
						</div>
					</td>
				
			
				
					<td id="tq04" class="cell clean" onclick="prompt.show('q04', 100)">
						<h3>100</h3>
						<div class="hide">
							<div id="q04">
								<button style="inline-block">What is a kernel?�</button>
								  <button style="inline-block">What is the bus?</button>
								<button style="inline-block">What is a device driver?</button>
								<button style="inline-block">What is a GUI?</button>
							</div>
							<div id="aq04">
								The central part of an operating system.
							</div>
						</div>
					</td>
				
			
		</tr>
	
		<tr>
			
				
					<td id="tq10" class="cell clean" onclick="prompt.show('q10', 200)">
						<h3>200</h3>
						<div class="hide">
							<div id="q10">
								<button style="inline-block">Who is Watts Humphrey?��</button>
								  <button style="inline-block">Who is William Petrie?</button>
								<button style="inline-block">Who is Alan Turing?�</button>
								<button style="inline-block">Who is Grady Booch?</button>
							</div>
							<div id="aq10">
								The father of Modern Computer Science.
							</div>
						</div>
					</td>
				
			
				
					<td id="tq11" class="cell clean" onclick="prompt.show('q11', 200)">
						<h3>200</h3>
						<div class="hide">
							<div id="q11">
								<button style="inline-block">What is Aerospce Engineering?</button>
								  <button style="inline-block">What is Software Engineering?�</button>
								<button style="inline-block">What is Mechanical Engineering?�</button>
								<button style="inline-block">What is Civil Engineering?</button>
							</div>
							<div id="aq11">
								The application of engineering to the development of software in a systematic method.�
							</div>
						</div>
					</td>
				
			
				
					<td id="tq12" class="cell clean" onclick="prompt.show('q12', 200)">
						<h3>200</h3>
						<div class="hide">
							<div id="q12">
								<button style="inline-block">What is cloud storage? </button>
								  <button style="inline-block">What is a hard disk drive?</button>
								<button style="inline-block">What is RAM?</button>
								<button style="inline-block">What is a solid state drive?</button>
							</div>
							<div id="aq12">
								storage device that uses integrated circuit assemblies as memory to store data persistently.
							</div>
						</div>
					</td>
				
			
				
					<td id="tq13" class="cell clean" onclick="prompt.show('q13', 200)">
						<h3>200</h3>
						<div class="hide">
							<div id="q13">
								<button style="inline-block">How many is 4?</button>
								  <button style="inline-block">How many is 10?</button>
								<button style="inline-block">How many is 50?</button>
								<button style="inline-block">How many is 1?</button>
							</div>
							<div id="aq13">
								The number of Java platforms.
							</div>
						</div>
					</td>
				
			
				
					<td id="tq14" class="cell clean" onclick="prompt.show('q14', 200)">
						<h3>200</h3>
						<div class="hide">
							<div id="q14">
								<button style="inline-block">What is multitasking?</button>
								  <button style="inline-block">What is a function?</button>
								<button style="inline-block">What is multithreading?</button>
								<button style="inline-block">What is multiprogramming?</button>
							</div>
							<div id="aq14">
								Running more than one process in a program.
							</div>
						</div>
					</td>
				
			
		</tr>
	
		<tr>
			
				
					<td id="tq20" class="cell clean" onclick="prompt.show('q20', 300)">
						<h3>300</h3>
						<div class="hide">
							<div id="q20">
								<button style="inline-block">What is C++?</button>
								  <button style="inline-block">What is Fortran?</button>
								<button style="inline-block">What is Java?</button>
								<button style="inline-block">What is C?</button>
							</div>
							<div id="aq20">
								The first ever commercially available language.
							</div>
						</div>
					</td>
				
			
				
					<td id="tq21" class="cell clean" onclick="prompt.show('q21', 300)">
						<h3>300</h3>
						<div class="hide">
							<div id="q21">
								<button style="inline-block">What is a user issue? </button>
								  <button style="inline-block">What is an epic?</button>
								<button style="inline-block">What is a task?</button>
								<button style="inline-block">What is a sprint?</button>
							</div>
							<div id="aq21">
								A set period of time during which specific work has to be completed and made ready for review.
							</div>
						</div>
					</td>
				
			
				
					<td id="tq22" class="cell clean" onclick="prompt.show('q22', 300)">
						<h3>300</h3>
						<div class="hide">
							<div id="q22">
								<button style="inline-block">What is the graphics card?</button>
								  <button style="inline-block">What is a power supply?</button>
								<button style="inline-block">What is a motherboard?</button>
								<button style="inline-block">What is the hard drive enclosure?</button>
							</div>
							<div id="aq22">
							Device that houses the RAM and CPU
							</div>
						</div>
					</td>
				
			
				
					<td id="tq23" class="cell clean" onclick="prompt.show('q23', 300)">
						<h3>300</h3>
						<div class="hide">
							<div id="q23">
								<button style="inline-block">Who is Tim Cook, Apple?</button>
								  <button style="inline-block">Who is Satya Nadella, Microsoft?</button>
								<button style="inline-block">Who is Sundar Pichai, Google?</button>
								<button style="inline-block">Who is James Gosling, Oracle?</button>
							</div>
							<div id="aq23">
								The creator of java?
							</div>
						</div>
					</td>
				
			
				
					<td id="tq24" class="cell clean" onclick="prompt.show('q24', 300)">
						<h3>300</h3>
						<div class="hide">
							<div id="q24">
								<button style="inline-block">What is Linux?</button>
								  <button style="inline-block">What is OpenBSD?</button>
								<button style="inline-block">What is FreeBSD?</button>
								<button style="inline-block">What is Qubes OS?</button>
							</div>
							<div id="aq24">
								Most popular open-source OS
							</div>
						</div>
					</td>
				
			
		</tr>
	
		<tr>
			
				
					<td id="tq30" class="cell clean" onclick="prompt.show('q30', 400)">
						<h3>400</h3>
						<div class="hide">
							<div id="q30">
								<button style="inline-block">What is IBM701? </button>
								  <button style="inline-block">What is the IBM PC?</button>
								<button style="inline-block">What is the Z1?</button>
								<button style="inline-block">What is the UNIVAC I?</button>
							</div>
							<div id="aq30">
								The first commercially available computer.
							</div>
						</div>
					</td>
				
			
				
					<td id="tq31" class="cell clean" onclick="prompt.show('q31', 400)">
						<h3>400</h3>
						<div class="hide">
							<div id="q31">
								<button style="inline-block">What is adapter pattern?</button>
								  <button style="inline-block">What is a decorator pattern?</button>
								<button style="inline-block">What is composite pattern?</button>
								<button style="inline-block">What is facade pattern?</button>
							</div>
							<div id="aq31">
							A design pattern that allows behavior to be added to an individual object, dynamically, without affecting the behavior of the other objects from the same class.
							</div>
						</div>
					</td>
				
			
				
					<td id="tq32" class="cell clean" onclick="prompt.show('q32', 400)">
						<h3>400</h3>
						<div class="hide">
							<div id="q32">
								<button style="inline-block">What is the ALU?</button>
								  <button style="inline-block">What is the CPU?</button>
								<button style="inline-block">What is the GPU?</button>
								<button style="inline-block">What is the bus?</button>
							</div>
							<div id="aq32">
								Part of CPU responsible for arithmetic and logic operations.
							</div>
						</div>
					</td>
				
			
				
					<td id="tq33" class="cell clean" onclick="prompt.show('q33', 400)">
						<h3>400</h3>
						<div class="hide">
							<div id="q33">
								<button style="inline-block">What is a embedded server?</button>
								  <button style="inline-block">What is a Java applet?</button>
								<button style="inline-block">What is a embedded system?</button>
								<button style="inline-block">What is java point?</button>
							</div>
							<div id="aq33">
								Java embedded in a small web applicaton.
							</div>
						</div>
					</td>
				
			
				
					<td id="tq34" class="cell clean" onclick="prompt.show('q34', 400)">
						<h3>400</h3>
						<div class="hide">
							<div id="q34">
								<button style="inline-block">What is a single processor system?</button>
								  <button style="inline-block">What is a mega system?</button>
								<button style="inline-block">What is a multiprocessor system?</button>
								<button style="inline-block">What is multicore system?</button>
							</div>
							<div id="aq34">
							System with more than one processor
							</div>
						</div>
					</td>
				
			
		</tr>
	
		<tr>
			
				
					<td id="tq40" class="cell clean" onclick="prompt.show('q40', 500)">
						<h3>500</h3>
						<div class="hide">
							<div id="q40">
								<button style="inline-block">Who is Charles Babbage?</button>
								  <button style="inline-block">Who is Alan Turing?</button>
								<button style="inline-block">Who is Nikola Tesla?</button>
								<button style="inline-block">Who is Lord Byron?</button>
							</div>
							<div id="aq40">
								Creator the first mechanical computer ever, known as the difference engine?
							</div>
						</div>
					</td>
				
			
				
					<td id="tq41" class="cell clean" onclick="prompt.show('q41', 500)">
						<h3>500</h3>
						<div class="hide">
							<div id="q41">
								<button style="inline-block">Who is Dr. Guowei Yang?</button>
								  <button style="inline-block">Who is Dr. Rodion Podorozhny?</button>
								<button style="inline-block">Who is Dr. Ted Lehr?</button>
								<button style="inline-block">Who is Dr. Lee-Song Koh?</button>
							</div>
							<div id="aq41">
							The best software engineering teacher.
							</div>
						</div>
					</td>
				
			
				
					<td id="tq42" class="cell clean" onclick="prompt.show('q42', 500)">
						<h3>500</h3>
						<div class="hide">
							<div id="q42">
								<button style="inline-block">What is a graphics processor?</button>
								  <button style="inline-block">What is a single processor?</button>
								<button style="inline-block">What is a multicore processor?</button>
								<button style="inline-block">What is a microprocessor?</button>
							</div>
							<div id="aq42">
							An integrated circuit that contains all the functions of a central processing unit of a computer
							</div>
						</div>
					</td>
				
			
				
					<td id="tq43" class="cell clean" onclick="prompt.show('q43', 500)">
						<h3>500</h3>
						<div class="hide">
							<div id="q43">
								<button style="inline-block">What is compile time polymorphism?</button>
								  <button style="inline-block">What is runtime polymorphism?</button>
								<button style="inline-block">What is a override?</button>
								<button style="inline-block">What is a error?</button>
							</div>
							<div id="aq43">
								A process in which a call to an overridden method is resolved at runtime rather than at compile-time.
							</div>
						</div>
					</td>
				
			
				
					<td id="tq44" class="cell clean" onclick="prompt.show('q44', 500)">
						<h3>500</h3>
						<div class="hide">
							<div id="q44">
								<button style="inline-block">What is CMD?</button>
								  <button style="inline-block">What is GUI?</button>
								<button style="inline-block">What is an application?</button>
								<button style="inline-block">What is an website?</button>
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
	<p><span id="correct-response"><a href="javascript:prompt.showQuestion()">View correct response</a> &nbsp;&nbsp;&nbsp;&nbsp; </span><a href="javascript:prompt.hide()">Continue &raquo;</a></p>
	
	<h2 id="question"></h2>
</div>

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
