package com.entity;

import com.util.VeDate;

public class Fcate {
	private String fcateid = "F" + VeDate.getStringId();
	private String fcatename;
	private String memo;

	public String getFcateid() {
		return fcateid;
	}

	public void setFcateid(String fcateid) {
		this.fcateid = fcateid;
	}

	public String getFcatename() {
		return this.fcatename;
	}

	public void setFcatename(String fcatename) {
		this.fcatename = fcatename;
	}

	public String getMemo() {
		return this.memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}
}
