<%@ page import = "com.alfasoft.rubrica.service.ServiziRubrica" %>
<%@ page import = "com.alfasoft.bean.Utente" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    
    <jsp:useBean id = "voce" class = "com.alfasoft.rubrica.bean.Voce" scope = "request" />
    <jsp:setProperty property = "*" name = "voce" />
    
    <%
    
    if (voce.isValid()){
    	
    	ServiziRubrica service = new ServiziRubrica();
    	
    	//if (service.aggiungiVoce(voce, ((Utente)session.getAttribute("utente")).getId()){
    		%>
    		<jsp:forward page="voceAggiunta.jsp" />
    		<%
    	}
   // }
    	
    	request.setAttribute("error", "1");
		%>
		<jsp:forward page="registrazioneNuovoCliente.jsp" />
