package com.multi.gazee.customerService;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class FaqDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public void insert(FaqVO bag) {
		my.insert("faq.create",bag);
	}
	
	public void delete(FaqVO bag) {
		my.delete("faq.del", bag);
	}
	
	public void update(FaqVO bag) {
		my.delete("faq.up", bag);
	}
	
	public FaqVO one(int no) {
		FaqVO bag = my.selectOne("faq.one",no);
		my.update("faq.viewUpdate", no);
		return bag;
	}
	
	public List<FaqVO> list(PageVO vo){
		List<FaqVO> list = my.selectList("faq.all", vo);
		return list;
	}
	
	public List<FaqVO> category(String category1){
		List<FaqVO> category = my.selectList("faq.category", category1);
		return category;
	}
	
	public int count() {
		return my.selectOne("faq.count");
	}   
}
