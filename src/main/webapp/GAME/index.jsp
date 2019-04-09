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
<link href="StyleSheet.css" rel="stylesheet" type="text/css" >
<script src="GameScript.js" type="text/javascript"> </script>
<script src="websocket.js" type="text/javascript"> </script>
</head>


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
								<div id="q00">Tim Berners-Lee?</div>
								<div width="80%" id="aq00">Who invented the World Wide Web? </div>
							</div>
						</td>
					
				
					
						<td id="tq01" class="cell clean" onclick="prompt.show('q01', 100)">
							<h3>100</h3>
							<div class="hide">
								<div id="q01">Liskov substituion</div>
								<div id="aq01">What does the "L" stand for in "SOLID Principles"?</div>
							</div>
						</td>
					
				
					
						<td id="tq02" class="cell clean" onclick="prompt.show('q02', 100)">
							<h3>100</h3>
							<div class="hide">
								<div id="q02">What is volatile memory?</div>
								<div id="aq02">Type of memory that is lost when power to the computer is shut off</div>
							</div>
						</td>
					
				
					
						<td id="tq03" class="cell clean" onclick="prompt.show('q03', 100)">
							<h3>100</h3>
							<div class="hide">
								<div id="q03">Oak</div>
								<div id="aq03">What is the original name given for java</div>
							</div>
						</td>
					
				
					
						<td id="tq04" class="cell clean" onclick="prompt.show('q04', 100)">
							<h3>100</h3>
							<div class="hide">
								<div id="q04">What is kernel?</div>
								<div id="aq04">The central part of an operating system</div>
							</div>
						</td>
					
				
			</tr>
		
			<tr>
				
					
						<td id="tq10" class="cell clean" onclick="prompt.show('q10', 200)">
							<h3>200</h3>
							<div class="hide">
								<div id="q10">Alan Turing</div>
								<div id="aq10">Who is the father of Modern Computer Science.</div>
							</div>
						</td>
					
				
					
						<td id="tq11" class="cell clean" onclick="prompt.show('q11', 200)">
							<h3>200</h3>
							<div class="hide">
								<div id="q11">What is Software Engineering?</div>
								<div id="aq11">The application of engineering to the development of software in a systematic method</div>
							</div>
						</td>
					
				
					
						<td id="tq12" class="cell clean" onclick="prompt.show('q12', 200)">
							<h3>200</h3>
							<div class="hide">
								<div id="q12">What is solid-state drive?</div>
								<div id="aq12">storage device that uses integrated circuit assemblies as memory to store data persistently.</div>
							</div>
						</td>
					
				
					
						<td id="tq13" class="cell clean" onclick="prompt.show('q13', 200)">
							<h3>200</h3>
							<div class="hide">
								<div id="q13">4</div>
								<div id="aq13">how many platforms does java have?</div>
							</div>
						</td>
					
				
					
						<td id="tq14" class="cell clean" onclick="prompt.show('q14', 200)">
							<h3>200</h3>
							<div class="hide">
								<div id="q14">What is multithreading?</div>
								<div id="aq14">Running more than one process in a program.</div>
							</div>
						</td>
					
				
			</tr>
		
			<tr>
				
					
						<td id="tq20" class="cell clean" onclick="prompt.show('q20', 300)">
							<h3>300</h3>
							<div class="hide">
								<div id="q20">Fortran</div>
								<div id="aq20">What was the first ever commercially available language</div>
							</div>
						</td>
					
				
					
						<td id="tq21" class="cell clean" onclick="prompt.show('q21', 300)">
							<h3>300</h3>
							<div class="hide">
								<div id="q21">What is a sprint?</div>
								<div id="aq21">A set period of time during which specific work has to be completed and made ready for review</div>
							</div>
						</td>
					
				
					
						<td id="tq22" class="cell clean" onclick="prompt.show('q22', 300)">
							<h3>300</h3>
							<div class="hide">
								<div id="q22">What is a motherboard?</div>
								<div id="aq22">Device that houses the RAM and CPU</div>
							</div>
						</td>
					
				
					
						<td id="tq23" class="cell clean" onclick="prompt.show('q23', 300)">
							<h3>300</h3>
							<div class="hide">
								<div id="q23">James Gosling, Oracle</div>
								<div id="aq23">Who was the creator of java?</div>
							</div>
						</td>
					
				
					
						<td id="tq24" class="cell clean" onclick="prompt.show('q24', 300)">
							<h3>300</h3>
							<div class="hide">
								<div id="q24">What is Linux?</div>
								<div id="aq24">Most popular open-source OS</div>
							</div>
						</td>
					
				
			</tr>
		
			<tr>
				
					
						<td id="tq30" class="cell clean" onclick="prompt.show('q30', 400)">
							<h3>400</h3>
							<div class="hide">
								<div id="q30">UNIVAC I</div>
								<div id="aq30">What was the first commercially available computer</div>
							</div>
						</td>
					
				
					
						<td id="tq31" class="cell clean" onclick="prompt.show('q31', 400)">
							<h3>400</h3>
							<div class="hide">
								<div id="q31">What is the decorator pattern?</div>
								<div id="aq31">A design pattern that allows behavior to be added to an individual 
									object, dynamically, without affecting the behavior of the other 
									objects from the same class.</div>
							</div>
						</td>
					
				
					
						<td id="tq32" class="cell clean" onclick="prompt.show('q32', 400)">
							<h3>400</h3>
							<div class="hide">
								<div id="q32">What is the ALU?</div>
								<div id="aq32">Part of CPU responsible for arithmetic and logic operations.</div>
							</div>
						</td>
					
				
					
						<td id="tq33" class="cell clean" onclick="prompt.show('q33', 400)">
							<h3>400</h3>
							<div class="hide">
								<div id="q33">Java applet</div>
								<div id="aq33">What is java embedded in a small web applicaton called?</div>
							</div>
						</td>
					
				
					
						<td id="tq34" class="cell clean" onclick="prompt.show('q34', 400)">
							<h3>400</h3>
							<div class="hide">
								<div id="q34">What is multiprocessor system?</div>
								<div id="aq34">System with more than one processor</div>
							</div>
						</td>
					
				
			</tr>
		
			<tr>
				
					
						<td id="tq40" class="cell clean" onclick="prompt.show('q40', 500)">
							<h3>500</h3>
							<div class="hide">
								<div id="q40">charles babbage</div>
								<div id="aq40">Who created the first mechanical computer ever known as the difference engine?</div>
							</div>
						</td>
					
				
					
						<td id="tq41" class="cell clean" onclick="prompt.show('q41', 500)">
							<h3>500</h3>
							<div class="hide">
								<div id="q41">What is calcium?</div>
								<div id="aq41">This is the most abundant mineral in the bones.</div>
							</div>
						</td>
					
				
					
						<td id="tq42" class="cell clean" onclick="prompt.show('q42', 500)">
							<h3>500</h3>
							<div class="hide">
								<div id="q42">What is a microprocessor?</div>
								<div id="aq42">an integrated circuit that contains all the functions of a central processing unit of a computer</div>
							</div>
						</td>
					
				
					
						<td id="tq43" class="cell clean" onclick="prompt.show('q43', 500)">
							<h3>500</h3>
							<div class="hide">
								<div id="q43">Runtime polymorphism is a process in which a call to an overridden method is resolved at runtime rather than at compile-time</div>What is runtime polymorphism?
								<div id="aq43"></div>
							</div>
						</td>
					
				
					
						<td id="tq44" class="cell clean" onclick="prompt.show('q44', 500)">
							<h3>500</h3>
							<div class="hide">
								<div id="q44">What is GUI</div>
								<div id="aq44">System that uses buttons and icons rather than a command line.</div>
							</div>
						</td>
					
				
			</tr>
		
	</tbody>
</table>

<div id="options">
	<h1>Jeopardy Champ!</h1>
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
	<input class="submit" type="button" id="submit" value="Start" onclick="game.init()" />
	<p align="center">Press F11 for full-screen mode</p>
	
	<div class="clear"></div>
</div>

<div id="stats">
</div>

<div id="prompt">
	<h2 id="answer"></h2>
	<p><span id="correct-response"><a href="javascript:prompt.showQuestion()">View correct response</a> &nbsp;&nbsp;&nbsp;&nbsp; </span><a href="javascript:prompt.hide()">Continue &raquo;</a></p>
	
	<h2 id="question"></h2>
</div>

<!-- Testing WebSockets -->
<div>
	<td>
		<p id="test"></p>
	</td>
</div>

</body>
</html>
