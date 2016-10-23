<%@ page import = "com.alfasoft.bean.Dipendente" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="Stylesheet" type="text/css" href="css/styles.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<title>Admin Page</title>
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
			<h1>Elenco dipendenti</h1>

	<table border="1px" align="center">

		<thead>

			<tr>
              <th>Nome</th> <th>Cognome</th>
              <th>Username</th> <th>Posizione</th>
              <th>Stipendio</th>
			</tr>

		</thead>
		
	     <c:forEach var="d"   items="${dipendenti}">
	        <tr>
	        <td>
	        ${d.nome}
	        </td> 
	        <td>
	        ${d.cognome}
	        </td>
	        <td>
	        ${d.username}
	        </td>
	        <td>
	        ${d.posizione}
	        </td>
	        <td>
	        ${d.stipendio}
	        </td>
	        </tr>
	     </c:forEach>
	
	</table>
		</div>
		<div id="footer2">
			<h1>Footer</h1>

		</div>


	</div>
	<!--  end of container -->
</body>
</html>