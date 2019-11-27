package com.virtusa.happinessbasket.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.virtusa.happinessbasket.model.BillingAddress;
import com.virtusa.happinessbasket.model.Customer;
import com.virtusa.happinessbasket.model.DeliveryPerson;



@Repository
public class BillingDao {

	public void addBillingAddress(BillingAddress address) {

		Session session = new Configuration().addAnnotatedClass(BillingAddress.class).configure().buildSessionFactory().openSession();
		try {
			session.beginTransaction();
			System.out.println("entered  into service class to save billing address"+address);
			session.saveOrUpdate(address);
			System.out.println("completed");
			session.getTransaction().commit();
			session.close();
		    }
		catch(Exception e) {
			session.getTransaction().rollback();	
		}

	}
	public boolean delBillingAddress(int addressId)
	{
		Session session = new Configuration().addAnnotatedClass(BillingAddress.class).configure().buildSessionFactory().openSession();
		session.beginTransaction();
		System.out.println(addressId+" bid");
		Query q =  session.createQuery("from BillingAddress b where b.addressId=:addressId");
		q.setParameter("addressId", addressId);
		BillingAddress billingaddress = (BillingAddress)q.uniqueResult();
		System.out.println(billingaddress);
		if(billingaddress != null) 
		{
		session.delete(billingaddress);
		session.getTransaction().commit();
		session.close();
		return true;
		}
		else
		return false;	
	}
	
	public List<BillingAddress> getAllBilling() {
		Session session = new Configuration().addAnnotatedClass(BillingAddress.class).configure().buildSessionFactory().openSession();
		session.beginTransaction();
		Query q = session.createQuery("from BillingAddress");
		List billingList = q.getResultList();
		return billingList;
	}
	
	

	}
