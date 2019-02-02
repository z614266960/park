package com.java.po;

import java.sql.Time;

import com.mysql.jdbc.Blob;

public class Amusement_facility {
	private int id;
	private String name;
	private Time open_time;
	private Time close_time;
	private String people;
	
	private String information;
	private String facility_img;
	private String notice;
	private int open_day;
	private int close_day;
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
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}
	
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	public String getFacility_img() {
		return facility_img;
	}
	public void setFacility_img(String facility_img) {
		this.facility_img = facility_img;
	}
	public String getNotice() {
		return notice;
	}
	public void setNotice(String notice) {
		this.notice = notice;
	}
	public int getOpen_day() {
		return open_day;
	}
	public void setOpen_day(int open_day) {
		this.open_day = open_day;
	}
	public int getClose_day() {
		return close_day;
	}
	public void setClose_day(int close_day) {
		this.close_day = close_day;
	}
	
}
