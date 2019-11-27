package com.virtusa.happinessbasket.hibernateutil;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
public class HibernateUtil {
		
		public static Session getSession() {
			
			Session session = new Configuration().configure().buildSessionFactory().openSession();
			return session;
		}

	}

