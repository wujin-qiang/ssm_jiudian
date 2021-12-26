package com.entity;

import com.util.VeDate;

public class Books {
	private String booksid = "B" + VeDate.getStringId();
	private String ordercode;
	private String cate;
	private String money;
	private String addtime;

	public String getBooksid() {
		return booksid;
	}

	public void setBooksid(String booksid) {
		this.booksid = booksid;
	}

	public String getOrdercode() {
		return this.ordercode;
	}

	public void setOrdercode(String ordercode) {
		this.ordercode = ordercode;
	}

	public String getCate() {
		return this.cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}

	public String getMoney() {
		return this.money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}
}
