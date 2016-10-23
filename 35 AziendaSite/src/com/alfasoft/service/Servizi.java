package com.alfasoft.service;

import com.alfasoft.bean.Cliente;
import com.alfasoft.dao.ClienteDAO;
import com.alfasoft.utils.PSWEncoding;


//La classe Servizi gestisce l'interfacciamento alla base dati
public class Servizi {
	
	ClienteDAO cDAO = new ClienteDAO();
	
	//Effettua l'inserimento di un cliente nel DB
	public boolean registraCliente(Cliente c){
		
			return cDAO.creaCliente(c);
	}
	
	//Metodo per la cifratura della password
	public String convertiPsw(String psw) {
		
		return PSWEncoding.codificatePass(psw);
	}
}
