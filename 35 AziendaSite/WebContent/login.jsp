<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="Stylesheet" type="text/css" href="css/login.css">

<title>Pagina di Login</title>
</head>
<body>

	<div id="Container" >
		<br><h1>Login Page</h1>

		<form action="doLogin.jsp" method="post">

			<br>
			Username: <input type="text" name="username" /><br ><br>
			Password:&nbsp; <input type="password" name="password" /><br><br>
			<br><input type="submit" value="Login" style="height:25px; width:100px " /><br>

			<%
				if (request.getAttribute("error") != null && request.getAttribute("error").equals("1")) {
			%>
			<br>Username o password errati!
			<%
				}
			%>
			
		</form>
	</div>
</body>
</html>