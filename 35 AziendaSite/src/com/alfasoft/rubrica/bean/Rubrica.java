package com.alfasoft.rubrica.bean;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.*;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

@Entity
public class Rubrica {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id_Rubrica;
	private String nomeRubrica;
	
	@OneToMany (mappedBy = "id", fetch = FetchType.EAGER,cascade=CascadeType.ALL)
	@NotFound(action=NotFoundAction.IGNORE)
	private Set<Voce> voci;

	public Rubrica() {
		nomeRubrica = "";
		voci = new HashSet<Voce>();
	}
	
	public Rubrica(String nomeRubrica) {
		this.nomeRubrica = nomeRubrica;
	}

	public String getNomeRubrica() {
		return nomeRubrica;
	}

	public void setNomeRubrica(String nomeRubrica) {
		this.nomeRubrica = nomeRubrica;
	}

	public int getIdRubrica() {
		return id_Rubrica;
	}

	public void setIdRubrica(int idRubrica) {
		this.id_Rubrica = idRubrica;
	}
	
	public Set<Voce> getListaVoci() {
		return voci;
	}

	public void setListaVoci(Set<Voce> listaVoci) {
		this.voci = listaVoci;
	}

	public boolean addVoce(Voce v){
		return voci.add(v);
	}
}
