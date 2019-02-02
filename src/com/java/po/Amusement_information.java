package com.java.po;

import com.mysql.jdbc.Blob;

public class Amusement_information {
	private int amusement_Id;
	private String introduction;
	private String address;
	private String business_hours;
	private String area_covered;
	private String amusement_img;
	public int getAmusement_Id() {
		return amusement_Id;
	}
	public void setAmusement_Id(int amusement_Id) {
		this.amusement_Id = amusement_Id;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBusiness_hours() {
		return business_hours;
	}
	public void setBusiness_hours(String business_hours) {
		this.business_hours = business_hours;
	}
	public String getArea_covered() {
		return area_covered;
	}
	public void setArea_covered(String area_covered) {
		this.area_covered = area_covered;
	}
	public String getAmusement_img() {
		return amusement_img;
	}
	public void setAmusement_img(String amusement_img) {
		this.amusement_img = amusement_img;
	}
	
	

}
