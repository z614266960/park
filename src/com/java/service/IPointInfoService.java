package com.java.service;

import com.java.po.Map_point;
import com.java.po.User;


public interface IPointInfoService {
	
	public Map_point getPoint();
	public void addPoint(Map_point p);
	public void updatePoint(Map_point p);
}
