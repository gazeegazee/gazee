package com.multi.gazee.customerService;

public class QnaVO {
	private int csId;
	private int csNo;
	private String csTitle;
	private String csContent;
	private String csWriter;
	private String csDate;
	private int csView;
	private String category;
	private int csSecret;
	private String csReply;
	
	
	public int getCsId() {
		return csId;
	}
	public void setCsId(int csId) {
		this.csId = csId;
	}
	public int getCsNo() {
		return csNo;
	}
	public void setCsNo(int csNo) {
		this.csNo = csNo;
	}
	public String getCsTitle() {
		return csTitle;
	}
	public void setCsTitle(String csTitle) {
		this.csTitle = csTitle;
	}
	public String getCsContent() {
		return csContent;
	}
	public void setCsContent(String csContent) {
		this.csContent = csContent;
	}
	public String getCsWriter() {
		return csWriter;
	}
	public void setCsWriter(String csWriter) {
		this.csWriter = csWriter;
	}
	public String getCsDate() {
		return csDate;
	}
	public void setCsDate(String csDate) {
		this.csDate = csDate;
	}
	public int getCsView() {
		return csView;
	}
	public void setCsView(int csView) {
		this.csView = csView;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getCsSecret() {
		return csSecret;
	}
	public void setCsSecret(int csSecret) {
		this.csSecret = csSecret;
	}
	public String getCsReply() {
		return csReply;
	}
	public void setCsReply(String csReply) {
		this.csReply = csReply;
	}
	@Override
	public String toString() {
		return "customerServiceVO [csNo=" + csNo + ", csTitle=" + csTitle + ", csContent=" + csContent + ", csWriter="
				+ csWriter + ", csDate=" + csDate + ", csView=" + csView + ", category=" + category + ", csSecret="
				+ csSecret + ", csReply=" + csReply + "]";
	}
	
	
}
