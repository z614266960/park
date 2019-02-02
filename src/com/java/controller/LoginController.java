package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.java.po.User;
import com.java.service.ILoginInfoService;

/*
 * 登陆控制器
 */
@Controller
@RequestMapping("LoginCtrl")
public class LoginController {
	
	@Autowired
	private ILoginInfoService loginService;
	
	@RequestMapping("/login")
	@ResponseBody
	public String login(String username,String pwd,HttpSession session){
		User user=loginService.checkLogin(username, pwd);
		if(user!=null && user.getPassword().equals(pwd)){
			session.setAttribute("username", username);
			if(user.getStatus().equals("admin")) {
				return "index";
			}else if(user.getStatus().equals("visitor")) {
				return "tourist_index";
			}else{
				return "error";
			}
		}else{
			return "error";
		}
	}
	
	@RequestMapping("/uploadFile")
	@ResponseBody
	public String test(MultipartFile file,HttpServletRequest request) throws IOException{
		System.out.println("comming!");
		String path = request.getSession().getServletContext().getRealPath("/resource/images");
		System.out.println("path>>"+path);
		
		Date d = new Date();
		String time = Integer.toString(d.getYear())+Integer.toString(d.getMonth())+Integer.toString(d.getDate())+Integer.toString(d.getHours())+Integer.toString(d.getMinutes())+Integer.toString(d.getSeconds());
		if(file.getOriginalFilename()!=null&&!file.getOriginalFilename().equals("")) {
			String fileName = time+file.getOriginalFilename();
			System.out.println("fileName>>"+fileName);
			
			File dir = new File(path, fileName);//生成新文件(路径，文件名)--这个新文件是空的
			System.out.println("dir.exists()>>"+dir.exists());
			if(!dir.exists()){//判断当前文件是否存在
				dir.mkdirs();//如果不存在，就创建它（包括他的父文件夹）
			}
			System.out.println("dir.exists()>>"+dir.exists());
//			MultipartFile自带的解析方法
			file.transferTo(dir);//往新文件里写东西
			
			return "images/"+fileName;
		}else {
			System.out.println("空文件>>");
			return "";
		}
		
		
		
	}
	
	
	@RequestMapping("/toLogin")
	public String toLogin(){
		return "login";
	}
	
	@RequestMapping("/toIndex")
	public String toIndex(){
		return "index";
	}
	@RequestMapping("/toTouristIndex")
	public String toTouristIndex(){
		return "tourist_index";
	}
	@RequestMapping("/toTourist_map")
	public String toTourist_map(){
		return "tourist_map";
	}
	
	@RequestMapping("/toTables")
	public String toTables(){
		return "tables";
	}
	@RequestMapping("/toAmusement_venue")
	public String toAmusement_venue(){
		return "amusement_venue";
	}
	
	@RequestMapping("/toRegister")
	public String toRegister(){
		return "register";
	}
	
	@RequestMapping("/tofile")
	public String tofile(){
		return "file";
	}
}
