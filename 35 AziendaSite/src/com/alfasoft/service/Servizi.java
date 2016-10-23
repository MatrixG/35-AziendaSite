package com.alfasoft.service;

import java.util.List;
import com.alfasoft.bean.Cliente;
import com.alfasoft.bean.Dipendente;
import com.alfasoft.dao.ClienteDAO;
import com.alfasoft.dao.DipendenteDAO;
import com.alfasoft.utils.PSWEncoding;

/* Legenda per i ruoli
 * 
 * 0 -> Admin
 * 1 -> Dipendente
 * 2 -> Cliente
 * 3 -> Ruolo non assegnato
 */

//La classe Servizi gestisce l'interfacciamento alla base dati
public class Servizi {

	ClienteDAO cDAO = new ClienteDAO();
	DipendenteDAO dDAO = new DipendenteDAO();

	// Effettua l'inserimento di un cliente nel DB
	public boolean registraCliente(Cliente c) {

		c.setRuolo('2');
		return cDAO.creaCliente(c);
	}

	// Restituisce tutti i Clienti nel DB
	public List<Cliente> getTuttiClienti() {

		return cDAO.getTuttiClienti();
	}

	// Effettua l'inserimento di un dipendente nel DB
	public boolean registraDipendente(Dipendente d) {

		d.setRuolo('1');
		return dDAO.creaDipendente(d);
	}

	// Restituisce tutti i Clienti nel DB
	public List<Dipendente> getTuttiDipendenti() {

		return dDAO.getTuttiDipendenti();
	}

	// Metodo per la cifratura della password
	public String convertiPsw(String psw) {

		return PSWEncoding.codificatePass(psw);
	}
}
