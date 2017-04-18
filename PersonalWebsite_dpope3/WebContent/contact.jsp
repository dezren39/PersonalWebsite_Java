<!DOCTYPE html>
<html>
<head>
<title>My Personal Website</title>
<link rel="stylesheet" href="styles/main.css" type="text/css">
</head>
<body>
	<div>
		<h1>Drewry's Contact Page</h1>
		<p>To learn more about me, visit my <a href="bio.html">Bio Page</a>.</p>
	
		<p>To connect with me, enter your name and email address below.</p>
	
		<form action="connect" method="post">
			<label for="firstName">First Name: </label>
			<input name="firstName" value="${user.firstName}"><br>
			
			<label id="lastN" for="lastName">Last Name: </label>
			<input name="lastName" value="${user.lastName}"><br>
			
			<label id="mail" for="email">Email Address: </label>
			<input name="email" value="${user.email}"><br>
			
			<label class="formError">${message}</label><br>
			
			<input type="submit" value="Connect!">
		</form>
	
		<p>Otherwise, feel free to return to the <a href="index.html">Home Page</a> to explore more.</p>
	</div>
</body>
</html>