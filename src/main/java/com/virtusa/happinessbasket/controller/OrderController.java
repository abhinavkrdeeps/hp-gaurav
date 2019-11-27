package com.virtusa.happinessbasket.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.happinessbasket.dao.DeliveryPersonDaoImpl;
import com.virtusa.happinessbasket.dao.OrderDaoImpl;
import com.virtusa.happinessbasket.dao.ProductDao;
import com.virtusa.happinessbasket.model.DeliveryPerson;
import com.virtusa.happinessbasket.model.Order1;
import com.virtusa.happinessbasket.model.Product;

@Controller
public class OrderController {

	@Autowired
	OrderDaoImpl dao;
	
	@Autowired
	ProductDao pdao;
	
	@Autowired
	DeliveryPersonDaoImpl deldao;
	
	
	@RequestMapping(value="addorder",method=RequestMethod.GET)  //add is the url name
	public ModelAndView getAdd() {
		return new ModelAndView("addOrder","command",new Order1());   // adddelguy is the jsp name
	}
		
	@RequestMapping(value="addorder", method=RequestMethod.POST)
	public ModelAndView setAdd(@ModelAttribute("Add") Order1 order) {
		dao.addOrder(order);
		ModelAndView mv = new ModelAndView("successOrder");
		return mv;
	}
	
	
	
	@RequestMapping(value="assignorder",method=RequestMethod.GET)
	public ModelAndView assignorder() {
		
		List<Order1> orders = dao.getAllOrders();
		List<DeliveryPerson> deliveryPersons = deldao.getAllDeliveryPerson();
		
		ModelAndView mv= new ModelAndView("OrderList");
		mv.addObject("orders",orders);
		mv.addObject("deliverypersons",deliveryPersons);
		return mv;
		
	}
	
	@RequestMapping(value="assignorder",method=RequestMethod.POST)
	public String assignorder(DeliveryPerson deliveryperson,Order1 order) {
		order.setDeliveryperson(deliveryperson);
		dao.updateOrder(order);
		List<Product>  allProduct=pdao.getAllProduct();
		ModelAndView mv=new ModelAndView();
		mv.addObject("lists","allProduct");
		return "redirect:OrderList";
		
	}
	
	@RequestMapping(value="payment",method=RequestMethod.GET)
	public ModelAndView Payment() {
		
		ModelAndView mv = new ModelAndView("Payment");
		return mv;
	}
	
	@RequestMapping(value="paymentsuccess",method=RequestMethod.GET)
	public ModelAndView PaymentSuccess() {
		
		ModelAndView mv = new ModelAndView("PaymentSuccessful");
		return mv;
	}
}
