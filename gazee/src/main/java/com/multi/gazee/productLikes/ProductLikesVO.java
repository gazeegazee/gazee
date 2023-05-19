package com.multi.gazee.productLikes;

public class ProductLikesVO {
	int likeId;
	int productId;
	String memberId;
	public int getLikeId() {
		return likeId;
	}
	public void setLikeId(int likeId) {
		this.likeId = likeId;
	}
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
	@Override
	public String toString() {
		return "ProductLikesDAO [likeId=" + likeId + ", productId=" + productId + ", memberId=" + memberId + "]";
	}
	
	
}
