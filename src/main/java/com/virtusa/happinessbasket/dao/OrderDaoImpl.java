package com.virtusa.happinessbasket.dao;

import java.util.List;
import javax.persistence.TypedQuery;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.virtusa.happinessbasket.hibernateutil.HibernateUtil;
import com.virtusa.happinessbasket.model.Order1;


@Repository
public class OrderDaoImpl implements OrderDao{

	public Order1 addOrder(Order1 order) {

		Session session = HibernateUtil.getSession();
		session.beginTransaction();
		session.save(order);
		session.getTransaction().commit();
		session.close();
		return order;

	}

	public List<Order1> getAllOrders() {

		Session session = HibernateUtil.getSession();
		session.beginTransaction();
		TypedQuery<Order1> query=session.createQuery("from Order");
		List<Order1> ordlist= query.getResultList();
		return ordlist;

	}

	public Order1 updateOrder(Order1 order) {
		Session session=HibernateUtil.getSession();
		session.beginTransaction();
		TypedQuery query= session.createQuery("update Order set status = :status");
		query.setParameter("status", "Completed");
		query.executeUpdate();
		session.getTransaction().commit();
		session.close();
		return order;
	}
}
