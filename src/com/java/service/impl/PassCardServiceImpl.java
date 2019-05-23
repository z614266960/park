package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.IAmusementInfoDao;
import com.java.dao.IPassCardDao;
import com.java.po.Amusement_facility;
import com.java.po.Amusement_information;
import com.java.po.PassCard;
import com.java.service.IAmusementInfoService;
import com.java.service.IPassCardService;
@Service
public class PassCardServiceImpl implements IPassCardService {
	
	@Autowired
	private IPassCardDao cardDao;
	
	public void addPassCard(PassCard passCard) {
		cardDao.addPassCard(passCard);
	};
	
	public List<PassCard> getPassCardList() {
		return cardDao.getPassCardList();
	}
}
