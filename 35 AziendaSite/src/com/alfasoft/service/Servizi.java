package com.alfasoft.service;

import java.util.List;

import com.alfasoft.bean.Cliente;
import com.alfasoft.dao.ClienteDAO;
import com.alfasoft.utils.PSWEncoding;

/* Legenda per i ruoli
 * 
 * 0 -> Admin
 * 1 -> Dipendente
 * 2 -> Cliente
 */

//La classe Servizi gestisce l'interfacciamento alla base dati
public class Servizi {

	ClienteDAO cDAO = new ClienteDAO();

	// Effettua l'inserimento di un cliente nel DB
	public boolean registraCliente(Cliente c) {

		c.setRuolo('2');
		return cDAO.creaCliente(c);
	}
	
	//Restituisce tutti i Clienti nel DB
	public List<Cliente> getTuttiClienti(){
		
		return cDAO.getTuttiClienti();
	}

	// Metodo per la cifratura della password
	public String convertiPsw(String psw) {

		return PSWEncoding.codificatePass(psw);
	}
}
