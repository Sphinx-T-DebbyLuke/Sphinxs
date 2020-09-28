package com.xj.POJO;

public class User {
	private Integer uid;
	private String uname;
	private String upasswd;
	private String usex;
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUsex() {
		return usex;
	}
	public void setUsex(String usex) {
		this.usex = usex;
	}
	public String getUpasswd() {
		return upasswd;
	}
	public void setUpasswd(String upasswd) {
		this.upasswd = upasswd;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upasswd=" + upasswd + ", usex=" + usex + "]";
	}
	
}
