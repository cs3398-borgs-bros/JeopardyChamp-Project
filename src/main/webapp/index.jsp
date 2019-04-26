<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% String WsUrl = getServletContext().getInitParameter("WsUrl"); %>
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
</head>

<script type="text/javascript">
	var wsUri = '<%=WsUrl%>';
	var proxy = CreateProxy(wsUri);
	
	document.addEventListener("DOMContentLoaded", function(event) {
		console.log(document.getElementById('loginPanel'));
		proxy.initiate({
			loginPanel: document.getElementById('loginPanel'),
			msgPanel: document.getElementById('msgPanel'),
			txtMsg: document.getElementById('txtMsg'),
			txtLogin: document.getElementById('txtLogin'),
			msgContainer: document.getElementById('msgContainer')
		});
	});
	
	</script>

<body>
	<div id="container">
		<div id="loginPanel">
			<div id="infoLabel">Type a name to join the room</div>
			<div style="padding: 10px;">
				<input id="txtLogin" type="text" class="loginInput"
					onkeyup="proxy.login_keyup(event)" />
				<button type="button" class="loginInput" onclick="proxy.login()">Login</button>
			</div>
		</div>
		<div id="msgPanel" style="display: none">
			<div id="msgContainer" style="overflow: auto;"></div>
			<div id="msgController">
				<textarea id="txtMsg" 
					title="Enter to send message"
					onkeyup="proxy.sendMessage_keyup(event)"
					style="height: 20px; width: 100%"></textarea>
				<button style="height: 30px; width: 100px" type="button"
					onclick="proxy.logout()">Logout</button>
			</div>
		</div>
	</div>
	</body>

</html>
