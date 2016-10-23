<%@ page import = "com.alfasoft.service.Servizi" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    
    <jsp:useBean id = "dipendente" class = "com.alfasoft.bean.Dipendente" scope = "request" />
    <jsp:setProperty property = "*" name = "dipendente" />
    
    <%
    
    if (dipendente.isValid()){
    	
    	Servizi service = new Servizi();
    	String psw = dipendente.getPassword();
    	psw = service.convertiPsw(psw);
    	dipendente.setPassword(psw);
    	
    	if (service.registraDipendente(dipendente)){
    		%>
    		<jsp:forward page="dipendenteRegistrato.jsp" />
    		<%
    	}else{
    		
    		request.setAttribute("error", "1");
    		%>
    		<jsp:forward page="registrazioneNuovoDipendente.jsp" />
    		<%
    	}
    }
     %>