package com.java.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.po.Amusement_facility;
import com.java.po.Catering_industry;
import com.java.po.PassCard;


public interface IPassCardService {
	public  void addPassCard(PassCard passCard);
	
	public List<PassCard> getPassCardList();
}
