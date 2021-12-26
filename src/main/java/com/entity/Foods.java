package com.entity;

import com.util.VeDate;

public class Foods {
	private String foodsid = "F" + VeDate.getStringId();
	private String foodsname;
	private String fcateid;
	private String image;
	private String price;
	private String sellnum;
	private String contents;
	private String fcatename;

	public String getFoodsid() {
		return foodsid;
	}

	public void setFoodsid(String foodsid) {
		this.foodsid = foodsid;
	}

	public String getFoodsname() {
		return this.foodsname;
	}

	public void setFoodsname(String foodsname) {
		this.foodsname = foodsname;
	}

	public String getFcateid() {
		return this.fcateid;
	}

	public void setFcateid(String fcateid) {
		this.fcateid = fcateid;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getPrice() {
		return this.price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getSellnum() {
		return this.sellnum;
	}

	public void setSellnum(String sellnum) {
		this.sellnum = sellnum;
	}

	public String getContents() {
		return this.contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getFcatename() {
		return this.fcatename;
	}

	public void setFcatename(String fcatename) {
		this.fcatename = fcatename;
	}
}
