package com.wipro.hrms.models;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Transient;

@Entity(name = "orders")
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private Date orderdate=new Date();
	private String userid;
	private String status="Pending";
	private String cardno;
	private String nameoncard;
	
	@OneToOne
	@JoinColumn(name = "userid", referencedColumnName = "userid",insertable = false,updatable = false)
	private Customer customer;
	
	@OneToMany
	@JoinColumn(name = "orderid")
	private Set<OrderDetails> orderdetails=new HashSet<OrderDetails>();
	
	@Transient
    public Double getTotalOrderPrice() {
        double sum = 0D;
        for (OrderDetails op : orderdetails) {
            sum += op.getAmount();
        }
        return sum;
    }
	
	public String getCardno() {
		return cardno;
	}
	public void setCardno(String cardno) {
		this.cardno = cardno;
	}
	public String getNameoncard() {
		return nameoncard;
	}
	public void setNameoncard(String nameoncard) {
		this.nameoncard = nameoncard;
	}
	
	public Set<OrderDetails> getOrderdetails() {
		return orderdetails;
	}
	public void setOrderdetails(Set<OrderDetails> orderdetails) {
		this.orderdetails = orderdetails;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	
	
}
