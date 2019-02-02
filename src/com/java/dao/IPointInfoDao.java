package com.java.dao;

import com.java.po.Map_point;
import com.java.po.User;


public interface IPointInfoDao {
	
	public Map_point getPoint();
	public void addPoint(Map_point p);
	public void updatePoint(Map_point p);
}
