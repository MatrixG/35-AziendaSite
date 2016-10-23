package com.alfasoft.bean;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Inheritance (strategy = InheritanceType.JOINED)
@DiscriminatorColumn (discriminatorType = DiscriminatorType.STRING)
public class Utente implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue (strategy = GenerationType.AUTO)
	protected int id;
	protected String cognome;
	protected String nome;
	protected char ruolo;
	protected String username;
	protected String password;
	
	
	public Utente() {
		
		id = 0;
		cognome = "";
		nome = "";
		ruolo = '3';
		username = "";
		password = "";
	}
	
	public Utente(String cognome, String nome, char ruolo, String username, String password) {
		
		id = 0;
		this.cognome = cognome;
		this.nome = nome;
		this.ruolo = ruolo;
		this.username = username;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public char getRuolo() {
		return ruolo;
	}

	public void setRuolo(char ruolo) {
		this.ruolo = ruolo;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
