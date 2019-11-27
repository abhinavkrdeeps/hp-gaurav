package com.virtusa.happinessbasket.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.virtusa.happinessbasket.model.Admin;

@Repository
public class AdminDAOImpl implements AdminDAO {
	Session session=new Configuration().configure().buildSessionFactory().openSession();
	
	public Admin add(Admin admin) {
		session.beginTransaction();
		session.save(admin);
		session.getTransaction().commit();
		session.close();
		return admin;	
	}

	public boolean delete(Admin admin) {
		
		return false;
	}

	public Admin update(Admin admin) {
		session.beginTransaction();
			session.update(admin);
			session.getTransaction().commit();
			
			session.close();
			return admin;
		}
		
	

	public boolean fetchById(Admin admin) {
		session.beginTransaction();
		
		String hql= "SELECT password FROM Admin WHERE aid = :aid";
		Query query = session.createQuery(hql); 
		query.setParameter("aid",admin.getAid());// value from ui
		List<String> list =query.getResultList();
		session.getTransaction().commit();
		if(!(list.isEmpty()))
		{
			if(admin.getPassword().equals(list.get(0)))
			{

				return true;
			}
		
		else

				return false;
		}
		else
			return false;
	}
//
	public List<Admin> fetchAll() {
		session.beginTransaction();
		List<Admin> adminList = (List<Admin>)session.createQuery("from Admin").list();
		session.getTransaction().commit();
		
		return adminList;
	}
	

}
	
