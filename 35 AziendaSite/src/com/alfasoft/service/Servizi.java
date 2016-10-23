package com.alfasoft.service;

import com.alfasoft.bean.Cliente;
import com.alfasoft.utils.PSWEncoding;

public class Servizi {
	
	public boolean registraCliente(Cliente c){
		
		return false;
	}
	
	public String convertiPsw(String psw) {
		
		return PSWEncoding.codificatePass(psw);
	}
}
