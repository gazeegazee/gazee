package com.multi.gazee.productImage;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ProductImageDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public ProductImageVO productImage(int productId) {
		ProductImageVO bag = my.selectOne("productImage.productImage",productId);
		return bag;
	}
}
