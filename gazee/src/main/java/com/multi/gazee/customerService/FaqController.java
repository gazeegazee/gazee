package com.multi.gazee.customerService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class FaqController {

	@Autowired
	FaqDAO dao;

	@RequestMapping("customerService/faqlist")
	public void list(PageVO vo, Model model) {
		vo.setStartEnd(vo.getPage());
		System.out.println(vo);
		List<FaqVO> list = dao.list(vo);
		System.out.println(list);
		int count = dao.count();
		int pages = count / 10 +1;		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("pages", pages);
	}

	@RequestMapping("customerService/faqCategory")
	public void category(Model model, String category1) {
		List<FaqVO> faqCategory = dao.category(category1);
		model.addAttribute("category", faqCategory);
	}
	
	@RequestMapping("customerService/faqOne")
	public void one(int no, Model model) {
		FaqVO bag = dao.one(no);
		model.addAttribute("bag",bag);
	}
}
