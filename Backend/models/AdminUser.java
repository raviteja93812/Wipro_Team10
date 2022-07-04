package com.wipro.hrms.models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class AdminUser {
	@Id
	private String userid;
	private String pwd;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	
}
