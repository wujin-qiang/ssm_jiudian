package com.entity;

import com.util.VeDate;

public class Orders {
	private String ordersid = "O" + VeDate.getStringId();
	private String ordercode;
	private String usersid;
	private String roomsid;
	private String price;
	private String thestart;
	private String theend;
	private String total;
	private String status;
	private String username;
	private String roomsno;
	private String begindate;

	public String getBegindate() {
		return begindate;
	}

	public void setBegindate(String begindate) {
		this.begindate = begindate;
	}

	public String getOrdersid() {
		return ordersid;
	}

	public void setOrdersid(String ordersid) {
		this.ordersid = ordersid;
	}

	public String getOrdercode() {
		return this.ordercode;
	}

	public void setOrdercode(String ordercode) {
		this.ordercode = ordercode;
	}

	public String getUsersid() {
		return this.usersid;
	}

	public void setUsersid(String usersid) {
		this.usersid = usersid;
	}

	public String getRoomsid() {
		return this.roomsid;
	}

	public void setRoomsid(String roomsid) {
		this.roomsid = roomsid;
	}

	public String getPrice() {
		return this.price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getThestart() {
		return this.thestart;
	}

	public void setThestart(String thestart) {
		this.thestart = thestart;
	}

	public String getTheend() {
		return this.theend;
	}

	public void setTheend(String theend) {
		this.theend = theend;
	}

	public String getTotal() {
		return this.total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRoomsno() {
		return this.roomsno;
	}

	public void setRoomsno(String roomsno) {
		this.roomsno = roomsno;
	}
}
