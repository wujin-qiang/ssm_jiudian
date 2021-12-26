package com.entity;

import com.util.VeDate;

public class Fitems {
	private String fitemsid = "F" + VeDate.getStringId();
	private String ordercode;
	private String foodsid;
	private String num;
	private String price;
	private String foodsname;

	public String getFitemsid() {
		return fitemsid;
	}

	public void setFitemsid(String fitemsid) {
		this.fitemsid = fitemsid;
	}

	public String getOrdercode() {
		return this.ordercode;
	}

	public void setOrdercode(String ordercode) {
		this.ordercode = ordercode;
	}

	public String getFoodsid() {
		return this.foodsid;
	}

	public void setFoodsid(String foodsid) {
		this.foodsid = foodsid;
	}

	public String getNum() {
		return this.num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getPrice() {
		return this.price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getFoodsname() {
		return this.foodsname;
	}

	public void setFoodsname(String foodsname) {
		this.foodsname = foodsname;
	}
}
