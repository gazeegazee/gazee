package com.multi.gazee.product;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class ProductDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public int productRegister(ProductVO bag) {
		int result = my.insert("product.productRegister",bag);
		System.out.println("dao"+bag);
		return result;
		
	}
	
	public ProductVO productDetail(int productId) {
		ProductVO bag = my.selectOne("product.productDetail",productId);
		return bag;
	}
	
	public List<ProductVO> list() {
		List<ProductVO> list = my.selectList("product.all");
		//row하나당 어떤 vo에 넣을지만 지정하면 my.selectList()를 호출한 경우에는 myBatis가 list vo가 잔뜩 들어간 List로 만들어준다.
		System.out.println(list.size());
		return list;
	}
}