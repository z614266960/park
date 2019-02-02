package com.java.controller;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.po.Amusement_information;
import com.java.po.Catering_industry;
import com.java.service.ICateringInfoService;

@Controller
@RequestMapping("CateringCtrl")
public class CateringController {
	@Autowired
	private ICateringInfoService cateringService;

	@RequestMapping("/toCateringView")
	public String toCateringView(HttpServletRequest req){
		List<Catering_industry> list = cateringService.getCateringList();
		req.setAttribute("list", list);
		
		return "cateringView";
	}
	@RequestMapping("/toCateringViewWithName")
	public String toCateringViewWithName(HttpServletRequest req,String business_name)throws UnsupportedEncodingException{
		List<Catering_industry> list = cateringService.getCateringListWithName(business_name);
		req.setAttribute("business_name", business_name);
		req.setAttribute("list",list);
		return "cateringView";
	}
	
	@RequestMapping("/toaddCatering")
	public String toaddCatering(){
		return "addCatering";
	}
	
	
	@RequestMapping("/addCatering")
	@ResponseBody
	public String addCatering(HttpSession session,HttpServletResponse resp,String business_name,String owner,String type,String range,String open_time,String close_time,String img_path){
		SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss"); // 
		 Catering_industry catering = new Catering_industry();
		 try{
		 catering.setBusiness_name(business_name);
		 catering.setOwner(owner);
		 catering.setType(type);
		 catering.setRange(range);
		 catering.setOpen_time( new java.sql.Time(format.parse(open_time+":00").getTime()) );
		 catering.setClose_time(new java.sql.Time(format.parse(close_time+":00").getTime()));
		 catering.setLicense_img(img_path);
		 cateringService.addCatering(catering);
		 } catch (ParseException e) {
				e.printStackTrace();
		 }
		 
		 resp.setContentType("text/html;charset=utf-8");
		 resp.setCharacterEncoding("utf-8");
		 return "ok";
	}
	@RequestMapping("updateCatering")
	@ResponseBody
	public String updateCatering(HttpSession session,HttpServletResponse resp,String business_id,String business_name,String owner,String type,String range,String open_time,String close_time,String img_path){
		SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss"); // 
	    java.util.Date d = null; 
	    Catering_industry catering = new Catering_industry();
	    try {
	    	 catering.setBusiness_id(Integer.parseInt(business_id));
	    	 catering.setBusiness_name(business_name);
			 catering.setOwner(owner);
			 catering.setType(type);
			 catering.setRange(range);
			 catering.setOpen_time( new java.sql.Time(format.parse(open_time+":00").getTime()) );
			 catering.setClose_time(new java.sql.Time(format.parse(close_time+":00").getTime()));
			 catering.setLicense_img(img_path);
			 cateringService.updateCatering(catering);
	    } catch (ParseException e) {
			e.printStackTrace();
		}
	    resp.setContentType("text/html;charset=utf-8");
	    resp.setCharacterEncoding("utf-8");
		return "ok";
	}
	@RequestMapping("/deleteCatering")
	@ResponseBody
	public String deleteCatering(HttpSession session,HttpServletResponse resp,String business_id){
		cateringService.deleteCatering(Integer.parseInt(business_id));
		resp.setContentType("text/html;charset=utf-8");
	    resp.setCharacterEncoding("utf-8");
		return "ok";
	}
	
	@RequestMapping("/toTouristCateringView")
	public String toTouristCateringView(HttpServletRequest req){
		List<Catering_industry> list = cateringService.getCateringList();
		req.setAttribute("list", list);
		return "eat_drink";
	}
	@RequestMapping("/toTouristCateringWithName")
	public String toTouristCateringWithName(HttpServletRequest req,String business_name) throws UnsupportedEncodingException{
		List<Catering_industry> list = cateringService.getCateringListWithName(business_name);
		req.setAttribute("list", list);
		req.setAttribute("business_name", business_name);
		return "eat_drink";
	}
}
