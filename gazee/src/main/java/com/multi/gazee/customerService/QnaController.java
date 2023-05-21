package com.multi.gazee.customerService;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QnaController {

	@Autowired
	QnaDAO dao;
	
	@RequestMapping("customerService/qna/qnaWrite")
	public void qnaWrite(QnaVO bag) {
		System.out.println(bag);
		dao.qnaRegister(bag);
	}
	
	@RequestMapping("customerService/qna/qnaList")
	public String list(PageVO vo, Model model, int mode) {
		vo.setStartEnd(vo.getPage());
		List<QnaVO> list = dao.list(vo);
		int count = dao.count();
		int pages = count / 10 +1;		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("pages", pages);
		
		if(mode==2) {
			return "customerService/qna/qnaList2";
		}
		else 
			return "customerService/qna/qnaList";
	}
	
	@RequestMapping("customerService/qna/qnaCategory")
	public String category(PageVO vo, Model model, String category1, int mode) {
		
		vo.setStartEnd(vo.getPage());
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", vo.getStart());
		map.put("end", vo.getEnd());
		map.put("category1", category1);
		List<QnaVO> qnaCategory = dao.category(map);
		int count = dao.countCategory(category1);
		int pages1 = count / 10 +1;
		model.addAttribute("category", qnaCategory);
		model.addAttribute("count", count);
		model.addAttribute("pages1", pages1);
		model.addAttribute("categoryValue",category1);
		if(mode==2) {
			return "customerService/qna/qnaCategory2";
		}
		else 
			return "customerService/qna/qnaCategory";
	}
	
	@RequestMapping("customerService/qna/qnaSearch")
	public String search(PageVO vo, String search1, Model model, int mode) {
		vo.setStartEnd(vo.getPage());
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", vo.getStart());
		map.put("end", vo.getEnd());
		map.put("search1", search1);
		List<QnaVO> qnaSearch = dao.search(map); 
		int count = dao.countSearch(search1);
		int pages1 = count / 10 +1;
		model.addAttribute("search", qnaSearch);
		model.addAttribute("count", count);
		model.addAttribute("pages1", pages1);
		model.addAttribute("searchValue",search1);
		if(mode==2) {
			return "customerService/qna/qnaSearch2";
		}
		else 
			return "customerService/qna/qnaSearch";
		
	}
	
	@RequestMapping("customerService/qna/qnaOne")
	public void one(int id, Model model) {
		QnaVO bag = dao.one(id);
		model.addAttribute("bag",bag);
	}
	
	
	@RequestMapping("customerService/qna/goToQnaWrite")
	public String goToQnaWrite() {
		return "customerService/qna/qnaWrite";
	}
	
	
}
