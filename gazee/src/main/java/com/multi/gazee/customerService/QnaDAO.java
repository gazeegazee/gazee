package com.multi.gazee.customerService;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class QnaDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public int qnaRegister(QnaVO bag) {
		int result = my.insert("qna.register", bag);
		return result;
	}
	
	public void delete(QnaVO bag) {
		my.delete("qna.del", bag);
	}
	
	public void update(QnaVO bag) {
		my.delete("qna.up", bag);
	}
	
	public QnaVO one(int no) {
		QnaVO bag = my.selectOne("qna.one",no);
		my.update("qna.viewUpdate", no);
		return bag;
	}
	
	public List<QnaVO> list(PageVO vo){
		List<QnaVO> list = my.selectList("qna.all", vo);
		return list;
	}
	
	public List<QnaVO> category(HashMap<String, Object> map){
		List<QnaVO> category = my.selectList("qna.category", map);
		return category;
	}
	
	
	public List<QnaVO> search(HashMap<String, Object> map){
		List<QnaVO> search = my.selectList("qna.searchAll", map);
		System.out.println(search.size());
		return search;
	}
	
	
	public int count() {
		return my.selectOne("qna.count");
	}
	
	public int countCategory(String category1) {
		return my.selectOne("qna.countCategory", category1);
	}  
	
	public int countSearch(String search1) {
		return my.selectOne("qna.countSearch", search1);
	}  
}
