package com.alfasoft.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import com.alfasoft.bean.Cliente;
import com.alfasoft.utils.HibernateUtil;

public class ClienteDAO {

	
	//Inserimento di un nuovo Cliente
	public boolean creaCliente (Cliente c){
		
		Session session = HibernateUtil.openSession();
		
		Transaction tx = null;
		boolean result = false;
		
		try {
			
			tx = session.getTransaction();
			tx.begin();
			session.persist(c);
			tx.commit();
			result = true;
		
		}catch (Exception e){
			
		}finally{
			session.close();
		}
		
		return result;
	}
}
