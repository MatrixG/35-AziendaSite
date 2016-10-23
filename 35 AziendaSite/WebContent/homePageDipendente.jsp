<%@ page import="com.alfasoft.bean.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="Stylesheet" type="text/css" href="css/styles.css">

<title>Home Dipendente</title>
</head>
<body>

	<div id="Container">

		<div id="header">
			<% Utente u = (Utente)session.getAttribute("utente"); %>
			<h1>Benvenuto <%= u.getNome() %></h1>

		</div>


		<div class="menu">

			<jsp:include page="menuLateraleDipendente.jsp"></jsp:include>

		</div>
		<div id="content">
			<h1>Welcome to Dipendente HomePage</h1>
		</div>
		<div id="footer">
			<h1>Footer</h1>

		</div>


	</div>
	<!--  end of container -->
</body>
</html>