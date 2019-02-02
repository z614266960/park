package com.java.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.ILoginInfoDao;
import com.java.dao.IPointInfoDao;
import com.java.po.Map_point;
import com.java.po.User;
import com.java.service.ILoginInfoService;
import com.java.service.IPointInfoService;

@Service
public class PointInfoServiceImpl implements IPointInfoService {
	
	@Autowired
    private IPointInfoDao pointDao;
	
	
	@Override
	public Map_point getPoint() {
		Map_point p = new Map_point();
		p = pointDao.getPoint();
		return p;
	}


	@Override
	public void addPoint(Map_point p) {
		pointDao.addPoint(p);
	}


	@Override
	public void updatePoint(Map_point p) {
		pointDao.updatePoint(p);
	}

}
