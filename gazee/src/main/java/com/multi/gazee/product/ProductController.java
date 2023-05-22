package com.multi.gazee.product;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO dao;
	
	@RequestMapping("product/register")
	public void productRegister(ProductVO product, HttpServletResponse response) {
		int result = dao.register(product);
		if (result == 1) {
			response.setStatus(HttpServletResponse.SC_OK);		
		}else {
			response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		}
	}
  
  	@RequestMapping("product/detail")
	public void productDetail(Model model,int productId) {
		ProductVO bag = dao.productDetail(productId);
		System.out.println(bag);
		model.addAttribute("bag", bag);
		ProductImageVO bag2 = dao2.productImage(productId);
		System.out.println(bag2);
		model.addAttribute("bag2", bag2);
		
	}
	
	@RequestMapping("product/list")
	public void list(Model model) {
		List<ProductVO> list = dao.list();
		model.addAttribute("list", list);
	}
}