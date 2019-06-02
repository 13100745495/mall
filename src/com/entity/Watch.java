package com.entity;

public class Watch {
	private int wid;
	private String name;
	private int price;
	private int money;
	private String photo;
	private String date;
	public Watch() {
		super();
	}
	public Watch(int wid, String name, int price, int money, String photo, String date) {
		super();
		this.wid = wid;
		this.name = name;
		this.price = price;
		this.money = money;
		this.photo = photo;
		this.date = date;
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Watch [wid=" + wid + ", name=" + name + ", price=" + price
				+ ", money=" + money + ", photo=" + photo + ", date=" + date
				+ "]";
	}
	
}
