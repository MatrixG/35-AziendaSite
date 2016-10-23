<%@ page import = "com.alfasoft.service.Servizi" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    
    <jsp:useBean id = "cliente" class = "com.alfasoft.bean.Cliente" scope = "request" />
    <jsp:setProperty property = "*" name = "cliente" />
    
    <%
    
    if (cliente.isValid()){
    	
    	Servizi service = new Servizi();
    	
//     	Setto lo username tutto minuscolo
    	cliente.setUsername(cliente.getUsername().toLowerCase());
    	String psw = cliente.getPassword();
    	psw = service.convertiPsw(psw);
    	cliente.setPassword(psw);
    	
//      Chech se username già utilizzato
    	if (!service.checkUsername(cliente.getUsername())) {
    		
    		request.setAttribute("error", "2");
    		%>
    		<jsp:forward page="registrazioneNuovoCliente.jsp" />
    		<%
    	}
    	
    	if (service.registraCliente(cliente)){
    		%>
    		<jsp:forward page="clienteRegistrato.jsp" />
    		<%
    	}else{
    		
    		request.setAttribute("error", "1");
    		%>
    		<jsp:forward page="registrazioneNuovoCliente.jsp" />
    		<%
    	}
    }else{
    	request.setAttribute("error", "1");
		%>
		<jsp:forward page="registrazioneNuovoCliente.jsp" />
		<%
    }
     %>