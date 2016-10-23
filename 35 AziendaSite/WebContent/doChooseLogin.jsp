<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Redirect Page</title>
</head>
<body>
	
	<c:choose>
		<c:when test="${scelta == 0}">
       		<jsp:forward page="homePageAdmin.jsp"></jsp:forward>
   		</c:when>
		<c:when test="${scelta == 1}">
			<jsp:forward page="homePageDipendente.jsp"></jsp:forward>
    	</c:when>
    	<c:when test="${scelta == 2}">
			<jsp:forward page="homePageCliente.jsp"></jsp:forward>
    	</c:when>
	</c:choose>
</body>
</html>