<%@ page import="com.alfasoft.service.Servizi"%>
<%@ page import="com.alfasoft.bean.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <jsp:useBean id="utente" class = "com.alfasoft.bean.Utente" scope = "session" />
    <jsp:setProperty property="*" name="utente"/>
    
    <%

    	Servizi service = new Servizi();
// 		Setto lo username tutto minuscolo
		utente.setUsername(utente.getUsername().toLowerCase());
		String psw = utente.getPassword();
    	psw = service.convertiPsw(psw);
    	utente.setPassword(psw);
    	Utente u = service.loginUtente(utente);
    	if (u != null){
    		request.setAttribute("scelta", Character.getNumericValue(u.getRuolo()));
    		%>
    		    <jsp:forward page="doChooseLogin.jsp"></jsp:forward>
    		<%
    	} else {
     		request.setAttribute("error", "1");
		    %>
		    <jsp:forward page="login.jsp"></jsp:forward>
		    <%
		}
		    %>