package com.java.dao;

import com.java.po.User;


public interface ILoginInfoDao {
	
	public User getUserByName(String username);
	
}
