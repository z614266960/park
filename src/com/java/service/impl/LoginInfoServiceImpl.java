package com.java.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.ILoginInfoDao;
import com.java.po.User;
import com.java.service.ILoginInfoService;

@Service
public class LoginInfoServiceImpl implements ILoginInfoService {
	
	@Autowired
    private ILoginInfoDao loginDao;
	
	public User getUserByName(String username) {
		return loginDao.getUserByName(username);
	}
	
	
	public User checkLogin(String username, String password) {
		User user=loginDao.getUserByName(username);
		return user;
	}

}
