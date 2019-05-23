package com.java.dao;

import java.util.List;

import com.java.po.Amusement_facility;
import com.java.po.PassCard;


public interface IPassCardDao {
	public void addPassCard(PassCard passCard);
	
	public List<PassCard> getPassCardList();
}
