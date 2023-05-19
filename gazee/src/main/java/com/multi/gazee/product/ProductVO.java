package com.multi.gazee.product;

public class ProductVO {

	int productId;
	String memberId;
	String category;
	String productName;
	String productContent;
	int price;
	int dealDelivery;
	int dealDirect;
	float directAddressx;
	float directAddressy;
	int productViews;
	int temporary;
	String savedTime;
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductContent() {
		return productContent;
	}
	public void setProductContent(String productContent) {
		this.productContent = productContent;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDealDelivery() {
		return dealDelivery;
	}
	public void setDealDelivery(int dealDelivery) {
		this.dealDelivery = dealDelivery;
	}
	public int getDealDirect() {
		return dealDirect;
	}
	public void setDealDirect(int dealDirect) {
		this.dealDirect = dealDirect;
	}
	public float getDirectAddressx() {
		return directAddressx;
	}
	public void setDirectAddressx(float directAddressx) {
		this.directAddressx = directAddressx;
	}
	public float getDirectAddressy() {
		return directAddressy;
	}
	public void setDirectAddressy(float directAddressy) {
		this.directAddressy = directAddressy;
	}
	public int getProductViews() {
		return productViews;
	}
	public void setProductViews(int productViews) {
		this.productViews = productViews;
	}
	public int getTemporary() {
		return temporary;
	}
	public void setTemporary(int temporary) {
		this.temporary = temporary;
	}
	public String getSavedTime() {
		return savedTime;
	}
	public void setSavedTime(String savedTime) {
		this.savedTime = savedTime;
	}
	@Override
	public String toString() {
		return "ProductVO [productId=" + productId + ", memberId=" + memberId + ", category=" + category
				+ ", productName=" + productName + ", productContent=" + productContent + ", price=" + price
				+ ", dealDelivery=" + dealDelivery + ", dealDirect=" + dealDirect + ", directAddressx=" + directAddressx
				+ ", directAddressy=" + directAddressy + ", productViews=" + productViews + ", temporary=" + temporary
				+ ", savedTime=" + savedTime + "]";
	}
	
	
	
	
	
}
