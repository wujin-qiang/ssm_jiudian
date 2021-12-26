package com.entity;

import com.util.VeDate;

public class Forders {
	private String fordersid = "F" + VeDate.getStringId();
	private String ordercode;
	private String usersid;
	private String total;
	private String addtime;
	private String status;
	private String username;

	public String getFordersid() {
		return fordersid;
	}

	public void setFordersid(String fordersid) {
		this.fordersid = fordersid;
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

	public String getTotal() {
		return this.total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
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
}
