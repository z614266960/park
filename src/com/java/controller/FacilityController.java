package com.java.controller;

import java.io.UnsupportedEncodingException;
import java.sql.Time;
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
import org.springframework.web.servlet.ModelAndView;

import com.java.po.Amusement_facility;
import com.java.po.FacilityWithPosition;
import com.java.po.User;
import com.java.service.IFacilityInfoService;
import com.java.service.ILoginInfoService;
import com.java.service.IRegisterInfoService;

/*
 * 设备控制器
 */
@Controller
@RequestMapping("FacilityCtrl")
public class FacilityController {
	
	@Autowired
	private IFacilityInfoService facilityService;
	
	@RequestMapping("/toFacilityView")
	public String toFacilityView(HttpServletRequest req){
		
		List<FacilityWithPosition> list = facilityService.getFacilityList();
		req.setAttribute("list", list);
		
		return "facilityView";
	}
	
	@RequestMapping("/toFacilityViewWithName")
	public String toFacilityViewWithName(HttpServletRequest req,String name) throws UnsupportedEncodingException{
		
		List<Amusement_facility> list = facilityService.getFacilityListWithName(name);
		req.setAttribute("name", name);
		req.setAttribute("list", list);
		
		return "facilityView";
	}
	
	@RequestMapping("/toTouristFacility")
	public String toTouristFacility(HttpServletRequest req){
		
		List<FacilityWithPosition> list = facilityService.getFacilityList();
		req.setAttribute("list", list);
		
		return "facility";
	}
	
	@RequestMapping("/toTouristFacilityWithName")
	public String toTouristFacilityWithName(HttpServletRequest req,String name) throws UnsupportedEncodingException{
		
		List<Amusement_facility> list = facilityService.getFacilityListWithName(name);
		req.setAttribute("list", list);
		req.setAttribute("name", name);
		
		return "facility";
	}
	
	@RequestMapping("/toAddFacility")
	public String toAddFacility(){
		return "addFacility";
	}
	@RequestMapping("/addFacility")
	@ResponseBody
	public String addFacility(HttpSession session,HttpServletResponse resp,String name,String open_time,String close_time,String people,String information,String facility_img_path,String notice,String open_day,String close_day){
		
		SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss"); // 
	    java.util.Date d = null; 
	    Amusement_facility facility = new Amusement_facility();
	    try {
	    	facility.setName(name);
			facility.setOpen_time( new java.sql.Time(format.parse(open_time+":00").getTime()) );
			facility.setClose_time(new java.sql.Time(format.parse(close_time+":00").getTime()));
			facility.setPeople(people);
			facility.setInformation(information);
			facility.setFacility_img(facility_img_path);
			facility.setNotice(notice);
			facility.setOpen_day(Integer.parseInt(open_day));
			facility.setClose_day(Integer.parseInt(close_day));
			facility.setNotice(notice);
			facilityService.addFacility(facility);
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
	    resp.setContentType("text/html;charset=utf-8");
	    resp.setCharacterEncoding("utf-8");
		return "ok";
	}
	
	@RequestMapping("/updateFacility")
	@ResponseBody
	public String updateFacility(HttpSession session,HttpServletResponse resp,String id,String name,String open_time,String close_time,String people,
			String information,String facility_img_path,String notice,String open_day,String close_day,String lng,String lat){
		
		SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss"); // 
	    java.util.Date d = null; 
	    FacilityWithPosition facility = new FacilityWithPosition();
	    try {
	    	facility.setId(Integer.parseInt(id));
	    	facility.setName(name);
			facility.setOpen_time( new java.sql.Time(format.parse(open_time+":00").getTime()) );
			facility.setClose_time(new java.sql.Time(format.parse(close_time+":00").getTime()));
			facility.setPeople(people);
			facility.setInformation(information);
			facility.setFacility_img(facility_img_path.trim());
			facility.setNotice(notice);
			facility.setOpen_day(Integer.parseInt(open_day));
			facility.setClose_day(Integer.parseInt(close_day));
			facility.setNotice(notice);
			facility.setLng(lng);
			facility.setLat(lat);
			facilityService.updateFacility(facility);
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
	    resp.setContentType("text/html;charset=utf-8");
	    resp.setCharacterEncoding("utf-8");
		return "ok";
	}
	
	@RequestMapping("/deleteFacility")
	@ResponseBody
	public String deleteFacility(HttpSession session,HttpServletResponse resp,String id){
		facilityService.deleteFacility(Integer.parseInt(id));
	    resp.setContentType("text/html;charset=utf-8");
	    resp.setCharacterEncoding("utf-8");
		return "ok";
	}
}
