package com.virtusa.happinessbasket.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.virtusa.happinessbasket.dao.CartDao;
import com.virtusa.happinessbasket.dao.CustomerDaoImpl;
import com.virtusa.happinessbasket.dao.ProductDaoImpl;
import com.virtusa.happinessbasket.model.Cart;
import com.virtusa.happinessbasket.model.Customer;
import com.virtusa.happinessbasket.model.Product;

@Controller
public class CartController {

	@Autowired
	ProductDaoImpl pdao;
	@Autowired
	CustomerDaoImpl cdao;
	@Autowired
	CartDao cartdao;
	
	
	@RequestMapping(value="addtocart/{productId}", method=RequestMethod.GET)
	public String addtoCart(@PathVariable("productId") String productId,HttpSession session) {
		Product product=pdao.getProductById(Integer.parseInt(productId));
		Customer customer=(Customer)session.getAttribute("customer");
		Cart cart=customer.getCart();
		System.out.println("1");
		if(cart==null)
		{
			cart = new Cart();
			cart.setCustomer(customer);
			List<Product> products = new ArrayList<Product>();
			products.add(product);
			cart.setProduct(products);
			cartdao.addToCart(cart);
			customer.setCart(cart);
		}else {
			List<Product> plist=cart.getProduct(); 
			if(plist==null)
			{
				plist = new ArrayList<Product>();
				
				plist.add(product);
				cart.setProduct(plist);
				cartdao.addToCart(cart);
				customer.setCart(cart);
			}else {

				plist.add(product);
				cart.setProduct(plist);
				cartdao.addToCart(cart);
				customer.setCart(cart);
			}
		}
		
		cdao.updateCustomer(customer);
	    return "redirect:/cuscart";
	}
	
	@RequestMapping(value="removefromcart")
	public String removefromCart(int productId,int customerId) {
		Product product=pdao.getProductById(productId);
		Customer customer=cdao.getCustomerById(customerId);
		Cart cart=customer.getCart();
		List<Product> plist=cart.getProduct();
		plist.add(product);
		cart.setProduct(plist);
		cartdao.addToCart(cart);
	    return "redirect:OrderList";
	}
	
}
