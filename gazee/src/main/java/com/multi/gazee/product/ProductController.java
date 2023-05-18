package com.multi.gazee.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.gazee.productImage.ProductImageDAO;
import com.multi.gazee.productImage.ProductImageVO;



@Controller
public class ProductController {
	@Autowired
	ProductDAO dao;
	@Autowired
	ProductImageDAO dao2;
	
	
	@RequestMapping("product/productRegister")
	public void productRegister(ProductVO bag) {
		System.out.println("controller"+bag);
		dao.productRegister(bag);
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
