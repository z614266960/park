package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.ICateringInfoDao;
import com.java.po.Catering_industry;
import com.java.service.ICateringInfoService;

@Service
public class CateringInfoServiceImpl implements ICateringInfoService{
	@Autowired
	private ICateringInfoDao cateringDao;
	
	public void addCatering(Catering_industry catering) {
		cateringDao.addCatering(catering);
	}
	public void updateCatering(Catering_industry catering) {
		cateringDao.updateCatering(catering);
	}
	public List<Catering_industry> getCateringList(){
		return cateringDao.getCateringList();
	}
	public void deleteCatering(int business_id){
		cateringDao.deleteCatering(business_id);
	}
	@Override
	public List<Catering_industry> getCateringListWithName(String business_name) {
		
		return cateringDao.getCateringListWithName(business_name);
	}

}
