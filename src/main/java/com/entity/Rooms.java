package com.entity;

import com.util.VeDate;

public class Rooms {
	private String roomsid = "R" + VeDate.getStringId();
	private String roomsno;
	private String cateid;
	private String price;
	private String image;
	private String shebei;
	private String chaoxiang;
	private String mianji;
	private String status;
	private String contents;
	private String catename;

	public String getRoomsid() {
		return roomsid;
	}

	public void setRoomsid(String roomsid) {
		this.roomsid = roomsid;
	}

	public String getRoomsno() {
		return this.roomsno;
	}

	public void setRoomsno(String roomsno) {
		this.roomsno = roomsno;
	}

	public String getCateid() {
		return this.cateid;
	}

	public void setCateid(String cateid) {
		this.cateid = cateid;
	}

	public String getPrice() {
		return this.price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getShebei() {
		return this.shebei;
	}

	public void setShebei(String shebei) {
		this.shebei = shebei;
	}

	public String getChaoxiang() {
		return this.chaoxiang;
	}

	public void setChaoxiang(String chaoxiang) {
		this.chaoxiang = chaoxiang;
	}

	public String getMianji() {
		return this.mianji;
	}

	public void setMianji(String mianji) {
		this.mianji = mianji;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getContents() {
		return this.contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getCatename() {
		return this.catename;
	}

	public void setCatename(String catename) {
		this.catename = catename;
	}
}
