package PRODUCT_CRUD_APP.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import PRODUCT_CRUD_APP.dao.ProductDao;
import PRODUCT_CRUD_APP.model.Product;

@Controller

public class HomeController {

	
	private ProductDao productDao;
	
	@RequestMapping("/")
	public String home(Model m) {
       List<Product>products=productDao.getProducts();
       m.addAttribute("products",products);
		return "index";
	}
	
	@RequestMapping("/add-product")
	public String addProduct(Model m) {
	    m.addAttribute("title","add-product");
		return "add_product_form";
	}
	
	@RequestMapping(value="/handleProduct",method=RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request) {
		System.out.println(product);
		this.productDao.createProduct(product);
		RedirectView redirectView= new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
		
	}
	
	
	@RequestMapping("/delete/{productId}")
	public RedirectView delete(@PathVariable("productId") int productId,HttpServletRequest request) {
		this.productDao.deleteProduct(productId);
		RedirectView redirectView= new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
		
	}
	
	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("productId") int pid,Model m) {
		Product product=this.productDao.getProduct(pid);
		m.addAttribute("product",product);
		
		return "updateForm";
	}
	
	
	
	
	
		
	
	
	
	
	
	
}
