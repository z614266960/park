package com.java.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.po.Amusement_facility;
import com.java.po.Map_point;
import com.java.po.PassCard;
import com.java.service.IAmusementInfoService;
import com.java.service.IPassCardService;

/*
 * pass卡
 */
@Controller
@RequestMapping("PassCtrl")
public class PassCardController {
	
	@Autowired
	private IPassCardService passCardService;
	
	@RequestMapping("/toPassCard")
	public String toPassCard(HttpServletRequest req){
		return "passCard";
	}
	
	@RequestMapping("/toAddPassCard")
	public String toAddPassCard(HttpServletRequest req){
		return "addPassCard";
	}
	
	@RequestMapping("/addPassCard")
	@ResponseBody
	public String addPassCard(HttpServletRequest req){
		String pc1 = req.getParameter("pc1");
		String pc2 = req.getParameter("pc2");
		String pc3 = req.getParameter("pc3");
		String pc4 = req.getParameter("pc4");
		String pc5 = req.getParameter("pc5");
		String pc6 = req.getParameter("pc6");
		
		PassCard card = new PassCard();
		card.setPc1(pc1);
		card.setPc2(pc2);
		card.setPc3(pc3);
		card.setPc4(pc4);
		card.setPc5(pc5);
		card.setPc6(pc6);
		
		passCardService.addPassCard(card);
		
		return "ok";
	}
	
	@RequestMapping("/toShowPassCard")
	public String toShowPassCard(HttpServletRequest req){
		
		List<PassCard> list = passCardService.getPassCardList();
		req.setAttribute("list", list);
		
		return "showPassCard";
	}
}
