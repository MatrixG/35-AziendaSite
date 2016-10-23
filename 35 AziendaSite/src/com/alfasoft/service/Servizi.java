package com.alfasoft.service;

import com.alfasoft.bean.Cliente;
import com.alfasoft.utils.PSWEncoding;


//La classe Servizi gestisce l'interfacciamento alla base dati
public class Servizi {
	
	//Effettua l'inserimento di un cliente nel DB
	public boolean registraCliente(Cliente c){
		
		return false;
	}
	
	//Metodo per la cifratura della password
	public String convertiPsw(String psw) {
		
		return PSWEncoding.codificatePass(psw);
	}
}
