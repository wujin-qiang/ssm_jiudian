package com.entity;

import com.util.VeDate;

import java.util.Date;

public class Cart {
	private String cartid = "C" + VeDate.getStringId();
	private String usersid;
	private String roomsid;
	private String price;
	private String addtime;
	private String username;
	private String roomsno;
	private String image;
	private String begindate;
	private String enddate;
	private String carroomflag;

	public String getCarroomflag() {
		return carroomflag;
	}

	public void setCarroomflag(String carroomflag) {
		this.carroomflag = carroomflag;
	}

	public String getBegindate() {
		return begindate;
	}

	public void setBegindate(String begindate) {
		this.begindate = begindate;
	}

	public String getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getCartid() {
		return cartid;
	}

	public void setCartid(String cartid) {
		this.cartid = cartid;
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

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
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
