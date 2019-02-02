package com.java.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.ILoginInfoDao;
import com.java.dao.IRegisterInfoDao;
import com.java.po.User;
import com.java.service.ILoginInfoService;
import com.java.service.IRegisterInfoService;

@Service
public class RegisterInfoServiceImpl implements IRegisterInfoService {
	
	@Autowired
    private IRegisterInfoDao registerDao;
	
	public User checkUserByName(String username) {
		return registerDao.checkUserByName(username);
	}

	public void addUser(User user) {
		registerDao.addUser(user);
	}

}
