package com.java.po;

import java.sql.Time;

public class Catering_industry {
	private int business_id;
	private String business_name;
	private String owner;
	private String type;
	private String range;
	private Time open_time;
	private Time close_time;
	private String license_img;
	
	public int getBusiness_id() {
		return business_id;
	}
	public void setBusiness_id(int business_id) {
		this.business_id = business_id;
	}
	public String getBusiness_name() {
		return business_name;
	}
	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getRange() {
		return range;
	}
	public void setRange(String range) {
		this.range = range;
	}
	public Time getOpen_time() {
		return open_time;
	}
	public void setOpen_time(Time open_time) {
		this.open_time = open_time;
	}
	public Time getClose_time() {
		return close_time;
	}
	public void setClose_time(Time close_time) {
		this.close_time = close_time;
	}
	public String getLicense_img() {
		return license_img;
	}
	public void setLicense_img(String license_img) {
		this.license_img = license_img;
	}
	
	

}
