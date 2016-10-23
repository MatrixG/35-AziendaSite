package com.alfasoft.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.alfasoft.bean.Utente;
import com.alfasoft.utils.HibernateUtil;

public class UtenteDAO {
	
		//Cerca se un utente è presente nel DB
		public Utente loginUtente (Utente u){
			
			Session session = HibernateUtil.openSession();
			String hql = "From Utente Where username = :username AND password = :password";
			Transaction tx = null;
			Utente result = null;
			
			try {
				
				tx = session.getTransaction();
				tx.begin();
				Query query = session.createQuery(hql);
				query.setParameter("username", u.getUsername());
				query.setParameter("password", u.getPassword());
				result = (Utente) query.uniqueResult();
				tx.commit();
			
			}catch (Exception e){
				tx.rollback();
			}finally{
				session.close();
			}
			return result;
		}

		//Ritorna "true" se lo username non è usato
		public boolean checkUsername(String username) {
				
				Session session = HibernateUtil.openSession();
				String hql = "From Utente Where username = :username";
				Transaction tx = null;
				boolean result = true;
				
				try {
					
					tx = session.getTransaction();
					tx.begin();
					Query query = session.createQuery(hql);
					query.setParameter("username", username);
					if  ((Utente) query.uniqueResult() != null)
						result = false;
					tx.commit();
				
				}catch (Exception e){
					tx.rollback();
				}finally{
					session.close();
				}
				return result;
			}

}
