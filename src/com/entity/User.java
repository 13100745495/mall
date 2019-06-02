package com.entity;

public class User {
	private int uid;
	private String username;
	private String password;
	private String email;
	private String phone;
	private String date;
	public User() {
		super();
	}
	public User(int uid, String username, String password, String email,
			String phone, String date) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.date = date;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password="
				+ password + ", email=" + email + ", phone=" + phone
				+ ", date=" + date + "]";
	}
}
