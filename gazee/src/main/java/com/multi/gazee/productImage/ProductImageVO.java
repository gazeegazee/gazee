package com.multi.gazee.productImage;

public class ProductImageVO {
	Long productImageId;
	Long productId;
	String productImageUrl;
	
	public Long getProductImageId() {
		return productImageId;
	}
	public void setProductImageId(Long productImageId) {
		this.productImageId = productImageId;
	}
	public Long getProductId() {
		return productId;
	}
	public void setProductId(Long productId) {
		this.productId = productId;
	}
	public String getProductImageUrl() {
		return productImageUrl;
	}
	public void setProductImageUrl(String productImageUrl) {
		this.productImageUrl = productImageUrl;
	}
	public int getProductImageOrder() {
		return productImageOrder;
	}
	public void setProductImageOrder(int productImageOrder) {
		this.productImageOrder = productImageOrder;
	}
	int productImageOrder;
}
