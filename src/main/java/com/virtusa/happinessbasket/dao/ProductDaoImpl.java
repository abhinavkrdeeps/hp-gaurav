package com.virtusa.happinessbasket.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.virtusa.happinessbasket.hibernateutil.HibernateUtil;
import com.virtusa.happinessbasket.model.Customer;
import com.virtusa.happinessbasket.model.Product;

@Repository
public class ProductDaoImpl implements ProductDao{

	public List<Product> getAllProduct() {
		Session session= HibernateUtil.getSession();
		session.beginTransaction();
		TypedQuery<Product> query=session.createQuery("from Product");
		return query.getResultList();
	}

	public Product deleteProduct(Product product) {
		Session session= HibernateUtil.getSession();
		session.beginTransaction();
		session.delete(product);
		session.getTransaction().commit();
		session.close();
		return product;
	}

	public Product addProduct(Product product) {
		Session session= HibernateUtil.getSession();
		session.beginTransaction();
		session.save(product);
		session.getTransaction().commit();
		session.close();
		return product;
		
	}

	public Product updateProduct(Product product) {
		Session session= HibernateUtil.getSession();
		session.beginTransaction();
		session.saveOrUpdate(product);
		session.getTransaction().commit();
		session.close();
		return product;
	}

	public Product getProductById(int productId) {
		Session session = new Configuration().addAnnotatedClass(Product.class).configure().buildSessionFactory().openSession();
		session.beginTransaction();
		TypedQuery<Product> q =  session.createQuery("from Product where productId=:productId");
		q.setParameter("productId", productId);
		Product product = (Product)q.getResultList().get(0);
		return product;		
	}
	
	public List<Product> getMenProduct() {
		Session session= HibernateUtil.getSession();
		session.beginTransaction();
		TypedQuery<Product> query=session.createQuery("from Product p where p.category=:category").setParameter("category", 4);
		return query.getResultList();
	}
	
	public List<Product> getWomenProduct() {
		Session session= HibernateUtil.getSession();
		session.beginTransaction();
		TypedQuery<Product> query=session.createQuery("from Product p where p.category=:category").setParameter("category", 5);
		return query.getResultList();
	}
	
	public List<Product> getElectronicsProduct() {
		Session session= HibernateUtil.getSession();
		session.beginTransaction();
		TypedQuery<Product> query=session.createQuery("from Product p where p.category=:category").setParameter("category", 1);
		return query.getResultList();
	}
	
	public List<Product> getAccessories() {
		Session session= HibernateUtil.getSession();
		session.beginTransaction();
		TypedQuery<Product> query=session.createQuery("from Product p where p.category=:category").setParameter("category", 6);
		return query.getResultList();
	}
}
