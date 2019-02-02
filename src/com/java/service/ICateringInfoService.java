package com.java.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.po.Catering_industry;


public interface ICateringInfoService {
	public  void addCatering(Catering_industry catering);
	public  void updateCatering(Catering_industry catering);
	public List<Catering_industry> getCateringList();
	public List<Catering_industry> getCateringListWithName(String business_name);

	public void deleteCatering(int business_id);

}
