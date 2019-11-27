package com.virtusa.happinessbasket.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.happinessbasket.dao.CartDao;
import com.virtusa.happinessbasket.dao.CategoryDAOImpl;
import com.virtusa.happinessbasket.dao.ProductDao;
import com.virtusa.happinessbasket.dao.ProductDaoImpl;
import com.virtusa.happinessbasket.service.ProductServiceImpl;
import com.virtusa.happinessbasket.model.Cart;
import com.virtusa.happinessbasket.model.Category;
import com.virtusa.happinessbasket.model.Customer;
import com.virtusa.happinessbasket.model.Product;

@Controller
public class ProductController {
	
	@Autowired
	ProductDaoImpl pdao;
	
	@Autowired
	ProductDao dao;
	
	@Autowired
	CategoryDAOImpl cdao;
	
	@Autowired
	CartDao cartdao;
	//ADDING A PRODUCT
		@RequestMapping(value="addproduct",method=RequestMethod.GET)//address is the url name
		public ModelAndView getAdd() {
			List<Category> categories = cdao.getAllCategory();
			ModelAndView modelAndView = new ModelAndView("addproduct");
			modelAndView.addObject("categories",categories);
			return modelAndView;
		}
		
		@RequestMapping(value = "addproduct",method = RequestMethod.POST)
		public String addProduct(@RequestParam("category")String cid, @RequestParam("productName")String productName,
				@RequestParam("price")String price, @RequestParam("quantity")String quantity,
				@RequestParam("productDescription")String pdesc) {
			
			
			Product product = new Product();
			Category category = cdao.getCategoryById(Integer.parseInt(cid));
			System.out.println("category "+ category);
		  	product.setCategory(category);
			product.setProductName(productName);
			product.setProductCost(Float.parseFloat(price));
			product.setQuantity(Integer.parseInt(quantity));
			product.setDescription(pdesc);
			dao.addProduct(product);
			return "redirect:addproduct";
		}


		//LIST OF PRODUCT
		@RequestMapping("getproductlist")
		public ModelAndView getproductdata(ModelAndView model) {
			List<Product>  allProduct=dao.getAllProduct();
			model.addObject("prod",allProduct);
			model.setViewName("ProductList");
			return model;

		}
		@RequestMapping("getproductlistadmin")
		public ModelAndView getproductlist(ModelAndView model) {
			List<Product>  allProduct=dao.getAllProduct();
			model.addObject("prod",allProduct);
			model.setViewName("ProductListAdmin");
			return model;

		}

		//FIND BY PRODUCTID
		@RequestMapping(value = "findproduct", method = RequestMethod.GET)
		public ModelAndView getproductid() {
			System.out.println("get");
			return new ModelAndView("findproduct","command",new Product());
		}

		@RequestMapping(value = "findproduct", method = RequestMethod.POST)
		public ModelAndView setemailid(@ModelAttribute("Product")Product product,
				@RequestParam("productId") int productId) {
			System.out.println("productId");
		    Product productById = dao.getProductById(productId);
			System.out.println(productById);
			ModelAndView model = new ModelAndView("Productbyid");
			model.addObject("product", productById);
			return model;
		}


		//DELETE BY PRODUCTID
	/*
	 * @RequestMapping(value = "delproduct/{id}", method = RequestMethod.GET) public
	 * ModelAndView getdelproduct() { System.out.println("get"); return new
	 * ModelAndView("deleteproduct","command",new Product()); }
	 */

		@RequestMapping(value = "delproduct/{id}", method = RequestMethod.GET)
		public String setdelcus(
			@PathVariable("id")int productId,HttpSession session) {
			System.out.println("productid");
			
			Product product = dao.getProductById(productId);
			List<Cart> carts = cartdao.getAllCart();
			for(Cart cart:carts)
			{
				List<Product> products = cart.getProduct();
				if(products!=null)
				{
					if(products.contains(product))
					{
						products.remove(product);
						cart.setProduct(products);
						cartdao.updateCart(cart);
					}
				}
				
			}
		    //Product productById = dao.getProductById(productId);
			dao.deleteProduct(product);
			return "redirect:/getproductlistadmin";

		}


		//UPDATE PRODUCT
		@RequestMapping(value="updateproduct/{id}",method=RequestMethod.GET)//address is the url name
		public ModelAndView getupdcus(@ModelAttribute("Product")Product product,
				@PathVariable("id")int productId) {
			Product productById = dao.getProductById(productId);
			dao.updateProduct(productById);
			return new ModelAndView("updateproduct","command",new Product()); // add is the jsp name
		}


		@RequestMapping(value = "updateproduct", method = RequestMethod.POST)
		public ModelAndView setupdcus(@ModelAttribute("Product")Product product) {
				System.out.println("post");
				dao.updateProduct(product);
				System.out.println("updated");
				ModelAndView mv = new ModelAndView("ProductList");
				return mv;
			}
		
		@RequestMapping(value="men",method=RequestMethod.GET)
		public ModelAndView getMen() {
				List<Product> product= pdao.getMenProduct();
				ModelAndView model=new ModelAndView();
				model.addObject("prod",product);
				model.setViewName("ProductList");
				return model;
		}
		
		@RequestMapping(value="women",method=RequestMethod.GET)
		public ModelAndView getWomen() {
			List<Product> product= pdao.getWomenProduct();
			ModelAndView model=new ModelAndView();
			model.addObject("prod",product);
			model.setViewName("ProductList");
			return model;
	}
		
		@RequestMapping(value="accessories",method=RequestMethod.GET)
		public ModelAndView getAccessories() {
			List<Product> product= pdao.getAccessories();
			ModelAndView model=new ModelAndView();
			model.addObject("prod",product);
			model.setViewName("ProductList");
			return model;
	}
		@RequestMapping(value="electronics",method=RequestMethod.GET)
		public ModelAndView getElectronics() {
			List<Product> product= pdao.getElectronicsProduct();
			ModelAndView model=new ModelAndView();
			model.addObject("prod",product);
			model.setViewName("ProductList");
			return model;
	}
			
}
