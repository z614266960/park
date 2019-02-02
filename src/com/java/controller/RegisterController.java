package com.java.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.java.po.User;
import com.java.service.ILoginInfoService;
import com.java.service.IRegisterInfoService;

/*
 * 注册控制器
 */
@Controller
@RequestMapping("RegisterCtrl")
public class RegisterController {
	
	@Autowired
	private IRegisterInfoService registerService;
	
	@RequestMapping("/toRegister")
	public String toRegister(){
		return "register";
	}
	
	@RequestMapping("/doRegister")
	@ResponseBody
	public String doRegister(String username,String pwd,HttpSession session){
		
		User user = registerService.checkUserByName(username);
	
		if(user==null){
			user= new User();
			user.setUsername(username);
			user.setPassword(pwd);
			session.setAttribute("username", username);
			registerService.addUser(user);
			return "success";
		}else{
			return "chongfu";
		}
	}
}
