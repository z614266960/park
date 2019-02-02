package com.java.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.po.Amusement_facility;
import com.java.po.Amusement_information;
import com.java.service.IAmusementInfoService;

/*
 * 游乐园信息管理控制器
 */
@Controller
@RequestMapping("AmusementCtrl")
public class AmusementController {
	@Autowired
	private IAmusementInfoService amusementService;
	
	@RequestMapping("/toAmusementView")
	public String toAmusementView(HttpServletRequest req){
		List<Amusement_information> list = amusementService.getAmusementList();
		if(list==null||list.isEmpty()) {
			
		}else {
			Amusement_information ai = list.get(0);
			req.setAttribute("amusement_information", ai);
		}
		return "index";
	}
	
	@RequestMapping("/toTouristAmusementView")
	public String toTouristAmusementView(HttpServletRequest req){
		List<Amusement_information> list = amusementService.getAmusementList();
		if(list==null||list.isEmpty()) {
			
		}else {
			Amusement_information ai = list.get(0);
			req.setAttribute("amusement_information", ai);
		}
		return "tourist_index";
	}
	
	@RequestMapping("/updateAmusement")
	@ResponseBody
	public String updateAmusement(HttpServletRequest req,String id,String introduction,String address,String business_hours,String area_covered,String amusement_img){
		Amusement_information ai = new Amusement_information();
		ai.setAmusement_Id(Integer.parseInt(id));
		ai.setIntroduction(introduction);
		ai.setAddress(address);
		ai.setBusiness_hours(business_hours);
		ai.setArea_covered(area_covered);
		ai.setAmusement_img(amusement_img);
		amusementService.updateAmusement(ai);
		return "ok";
	}
	
	@RequestMapping("/addAmusement")
	@ResponseBody
	public String addAmusement(HttpServletRequest req,String introduction,String address,String business_hours,String area_covered,String amusement_img){
		Amusement_information ai = new Amusement_information();
		ai.setIntroduction(introduction);
		ai.setAddress(address);
		ai.setBusiness_hours(business_hours);
		ai.setArea_covered(area_covered);
		ai.setAmusement_img(amusement_img);
		amusementService.addAmusement(ai);
		return "ok";
	}
}
