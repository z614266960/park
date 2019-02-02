package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.IAmusementInfoDao;
import com.java.po.Amusement_information;
import com.java.service.IAmusementInfoService;
@Service
public class AmusementInfoServiceImpl implements IAmusementInfoService {
	@Autowired
	private IAmusementInfoDao amusementDao;

	@Override
	public void addAmusement(Amusement_information amusement) {
		amusementDao.addAmusement(amusement);
		
	}

	@Override
	public void updateAmusement(Amusement_information amusement) {
		amusementDao.updateAmusement(amusement);
		
	}

	@Override
	public List<Amusement_information> getAmusementList() {
		
		return amusementDao.getAmusementList();
	}
	

}
