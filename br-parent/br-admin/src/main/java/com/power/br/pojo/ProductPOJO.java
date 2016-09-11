package com.power.br.pojo;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="br_product")
public class ProductPOJO {

	@Id
	@Column(length = 11)
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(length = 50)
	private String name;
	@Column(length = 4)
	private int status;
	@Column(length = 11)
	private int count;	
	@Temporal(TemporalType.TIMESTAMP)  
	private Date add_time;
	@Temporal(TemporalType.TIMESTAMP) 
	private Date admin_time;
	@Column(length = 5000)
	private String memo;
	@Column(length = 1000)
	private String img_url;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}

	public Date getAdd_time() {
		return add_time;
	}
	public void setAdd_time(Date add_time) {
		this.add_time = add_time;
	}
	public Date getAdmin_time() {
		return admin_time;
	}
	public void setAdmin_time(Date admin_time) {
		this.admin_time = admin_time;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
}
