package com.entity;

public class Comment {
	private int cid;
	private int uid;
	private int wid;
	private String content;
	private String date;
	public Comment() {
		super();
	}
	public Comment(int cid, int uid, int wid, String content, String date) {
		super();
		this.cid = cid;
		this.uid = uid;
		this.wid = wid;
		this.content = content;
		this.date = date;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Comment [cid=" + cid + ", uid=" + uid + ", wid=" + wid
				+ ", content=" + content + ", date=" + date + "]";
	}
	
}
