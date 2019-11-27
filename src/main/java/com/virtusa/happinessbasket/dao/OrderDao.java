package com.virtusa.happinessbasket.dao;

import java.util.List;

import com.virtusa.happinessbasket.model.Order1;

public interface OrderDao {

	public Order1 addOrder(Order1 order);
	public List<Order1> getAllOrders(); 
}
