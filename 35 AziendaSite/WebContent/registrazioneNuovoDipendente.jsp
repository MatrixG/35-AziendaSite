<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="Stylesheet" type="text/css" href="css/styles.css">

<title>Admin</title>
</head>
<body>

	<div id="Container">

		<div id="header">
			<h1>Home Page Admin</h1>

		</div>


		<div class="menu">

			<jsp:include page="menuLateraleAdmin.jsp"></jsp:include>

		</div>
		<div id="content">
			<h1>Registrazione Nuovo Dipendente</h1>
			
			<form action="doRegistrazioneDipendente.jsp" method="post">

				Nome: <input type="text" name="nome" required /><br>
				Cognome: <input type="text" name="cognome" required /><br>
				Stipendio: <input type="number" name="stipendio" /><br>
				Posizione: <input type="text" name="posizione" required /><br>
				Username: <input type="text" name="username" required /><br>
				Password: <input type="password" name="password" required /><br>
				
				<input type="submit" value="Registra" />
				
					
			</form>
			
			
			<%
				if (request.getAttribute("error") != null && request.getAttribute("error").equals("1")) {
					
					%>
					Errore nell'inserimento del Cliente!
					<%
				}
			%>

		</div>
		<div id="footer2">
			<h1>Footer</h1>

		</div>


	</div>
	<!--  end of container -->
</body>
</html>