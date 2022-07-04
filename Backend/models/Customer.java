package com.wipro.hrms.models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Customer {
	@Id
	private String userid;
	private String pwd;
	private String fname;
	private String lname;
	private String dob;
	private String gender;
	private String email;
	public Customer() {
		// TODO Auto-generated constructor stub
	}	

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

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

	@Override
	public String toString() {
		return "Customer [userid=" + userid + ", pwd=" + pwd + ", fname=" + fname + ", lname=" + lname + ", dob=" + dob
				+ ", gender=" + gender + ", email=" + email + "]";
	}

	
	
	
}
