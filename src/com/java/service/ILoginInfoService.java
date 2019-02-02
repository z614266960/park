package com.java.service;

import com.java.po.User;


public interface ILoginInfoService {
	
	public User getUserByName(String username);
	
	public User checkLogin(String username, String password);

}
