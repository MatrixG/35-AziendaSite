package com.alfasoft.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.alfasoft.bean.Dipendente;
import com.alfasoft.rubrica.bean.Rubrica;
import com.alfasoft.utils.HibernateUtil;

public class DipendenteDAO {

	
	//Inserimento di un nuovo Dipendente
	public boolean creaDipendente (Dipendente d){
		
		Session session = HibernateUtil.openSession();
		
		Transaction tx = null;
		boolean result = false;
		Rubrica r = new Rubrica();
		d.setRubrica(r);
		try {
			
			tx = session.getTransaction();
			tx.begin();
			session.persist(d);
			session.persist(r);
			tx.commit();
			result = true;
		
		}catch (Exception e){
			tx.rollback();
		}finally{
			session.close();
		}
		
		return result;
	}
	
	//Resituisce la lista dei Dipendenti
	@SuppressWarnings("unchecked")
	public List<Dipendente> getTuttiDipendenti() {

		Session session = HibernateUtil.openSession();
		
		String hql = "FROM Dipendente";
		
		Transaction tx = null;
		List<Dipendente> result = null;
		
		try {
		
			tx = session.getTransaction();
			tx.begin();
			Query query = session.createQuery(hql);
			result = (List<Dipendente>) query.list();
			tx.commit();
			
		}catch (Exception e){
			tx.rollback();
		}finally{
			session.close();
		}
		return result;
	}

	public Dipendente leggiDipendente(String username) {

		Session session = HibernateUtil.openSession();
		
		Transaction tx = null;
		Dipendente result = null;
		String hql = "FROM Dipendente Where username = :username";
		
		try {
			
			tx = session.getTransaction();
			tx.begin();
			Query query = session.createQuery(hql);
			query.setParameter("username", username);
			result = (Dipendente) query.uniqueResult();
			tx.commit();
			
		
		}catch (Exception e){
			tx.rollback();
		}finally{
			session.close();
		}
		return result;
	}
}
