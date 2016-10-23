<%@ page import = "com.alfasoft.service.Servizi" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    
    <jsp:useBean id = "utente" class = "com.alfasoft.bean.Cliente" scope = "request" />
    <jsp:setProperty property = "*" name = "utente" />
    
    <%
    
    if (utente.isValid()){
    	
    	Servizi service = new Servizi();
    	String psw = utente.getPassword();
    	psw = service.convertiPsw(psw);
    	utente.setPassword(psw);
    	
    	if (service.registraCliente(utente)){
    		%>
    		<jsp:forward page="clienteRegistrato.jsp" />
    		<%
    	}else{
    		
    		request.setAttribute("error", "1");
    		%>
    		<jsp:forward page="registrazioneNuovoCliente.jsp" />
    		<%
    	}
    }
     %>