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
			<h1>Registrazione Nuovo Cliente</h1>
			
			<form action="do RegistrazioneCliente.jsp" method="post">

				Nome: <input type="text" name="nome" required /><br>
				Cognome: <input type="text" name="cognome" required /><br>
				Ragione Sociale: <input type="text" name="ragSociale" required /><br>
				Partita IVA: <input type="text" name="pIva" required /><br>
				Username: <input type="text" name="username" required /><br>
				Password: <input type="password" name="password" required /><br>
				
				<input type="submit" value="Registra" />
				
					
			</form>

		</div>
		<div id="footer2">
			<h1>Footer</h1>

		</div>


	</div>
	<!--  end of container -->
</body>
</html>