package com.java.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.po.Catering_industry;

public interface ICateringInfoDao {
	public  void addCatering(Catering_industry catering);
	public  void updateCatering(Catering_industry catering);
	public List<Catering_industry> getCateringList();
	public List<Catering_industry> getCateringListWithName(@Param("business_name")String business_name);
	public void deleteCatering(int business_id);


}
