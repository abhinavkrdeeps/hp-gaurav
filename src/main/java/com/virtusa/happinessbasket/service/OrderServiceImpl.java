package com.virtusa.happinessbasket.service;

import org.hibernate.Session;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.virtusa.happinessbasket.dao.OrderDaoImpl;
import com.virtusa.happinessbasket.hibernateutil.HibernateUtil;
import com.virtusa.happinessbasket.model.Order1;

@Service
public class OrderServiceImpl {

	Session session=HibernateUtil.getSession();
	
	OrderDaoImpl orderdao;
	Order1 order=new Order1();
	
	@RequestMapping(value="assignOrder")
	public Order1 assignOrder() {
		return orderdao.updateOrder(order);
	}
}
