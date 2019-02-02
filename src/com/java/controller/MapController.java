package com.java.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.po.Map_point;
import com.java.service.ILoginInfoService;
import com.java.service.IPointInfoService;


/*
 * 地图控制器
 */
@Controller
@RequestMapping("MapCtrl")
public class MapController {
	
	@Autowired
	private IPointInfoService pointService;
	
	@RequestMapping("/toMap")
	public String toMap(HttpServletRequest req){
		Map_point p = pointService.getPoint();
		req.setAttribute("point", p);
		return "mapAdmin";
	}
	
	@RequestMapping("/addMap")
	@ResponseBody
	public String addMap(String longitude,String latitude,String city,String slogen,String start,String end){
		Map_point p = new Map_point();
		p.setLongitude(longitude);
		p.setLatitude(latitude);
		p.setCity(city);
		p.setSlogen(slogen);
		p.setStart(start);
		p.setEnd(end);
		pointService.addPoint(p);
		return "ok";
	}
	
	@RequestMapping("/updateMap")
	@ResponseBody
	public String addMap(String id,String longitude,String latitude,String city,String slogen,String start,String end){
		Map_point p = new Map_point();
		p.setId(Integer.parseInt(id));
		p.setLongitude(longitude);
		p.setLatitude(latitude);
		p.setCity(city);
		p.setSlogen(slogen);
		p.setStart(start);
		p.setEnd(end);
		pointService.updatePoint(p);
		return "ok";
	}
	/**
	 * 获得地图的点
	 * @return
	 */
	@RequestMapping("/getMapInfo")
	@ResponseBody
	public Map<String,Object> getMapInfo(){
		
		Map map = new HashMap<String,Object>();
		Map_point p = pointService.getPoint();
		map.put("longitude", p.getLongitude());
		map.put("latitude", p.getLatitude());
		map.put("city", p.getCity());
		map.put("slogen", p.getSlogen());
		map.put("start", p.getStart());
		map.put("end", p.getEnd());
		return map;
	}
	
}
