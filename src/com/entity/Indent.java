package com.entity;

public class Indent {
	private int iid;
	private int wid;
	private String name;
	private String username;
	private String phone;
	private String address;
	private String date;
	public Indent() {
		super();
	}
	public Indent(int iid, int wid, String name, String username, String phone,
			String address, String date) {
		super();
		this.iid = iid;
		this.wid = wid;
		this.name = name;
		this.username = username;
		this.phone = phone;
		this.address = address;
		this.date = date;
	}
	public int getiid() {
		return iid;
	}
	public void setiid(int iid) {
		this.iid = iid;
	}
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Indent [iid=" + iid + ", wid=" + wid + ", name=" + name
				+ ", username=" + username + ", phone=" + phone + ", address="
				+ address + ", date=" + date + "]";
	}
	
}
