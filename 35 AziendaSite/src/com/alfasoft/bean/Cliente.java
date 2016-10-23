package com.alfasoft.bean;

import javax.persistence.*;
import com.alfasoft.utils.CheckValues;

@Entity
public class Cliente extends Utente implements IsValid {

	private String ragSociale;
	private String pIva;
	
	public Cliente() {
		
		super();
	}
	
	public Cliente(String ragSociale, String pIva) {
		super();
		this.ragSociale = ragSociale;
		this.pIva = pIva;
	}

	public String getRagSociale() {
		return ragSociale;
	}

	public void setRagSociale(String ragSociale) {
		this.ragSociale = ragSociale;
	}

	public String getpIva() {
		return pIva;
	}

	public void setpIva(String pIva) {
		this.pIva = pIva;
	}

	public boolean isValid() {
		
		if (CheckValues.checkString(pIva) && CheckValues.checkString(ragSociale) &&
				CheckValues.checkString(nome) && CheckValues.checkString(cognome) &&
				CheckValues.checkString(username) && CheckValues.checkString(password))
			return true;
		
		return false;
	}
}
