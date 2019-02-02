package com.java.dao;

import com.java.po.User;


public interface IRegisterInfoDao {
	//添加用户
	public void addUser(User user);
	
	//根据用户名查询用户
	public User checkUserByName(String username);
	
}
