package com.java.service;

import com.java.po.User;


public interface IRegisterInfoService {
	
	public User checkUserByName(String username);

	public void addUser(User user);
}
