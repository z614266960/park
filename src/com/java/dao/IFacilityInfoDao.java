package com.java.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.po.Amusement_facility;


public interface IFacilityInfoDao {
	
	public void addFacility(Amusement_facility facility);
	public void updateFacility(Amusement_facility facility);
	public List<Amusement_facility> getFacilityList();
	public List<Amusement_facility> getFacilityListWithName(@Param("name")String name);
	public void deleteFacility(int id);
}
