package com.java.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.po.Amusement_facility;
import com.java.po.FacilityWithPosition;


public interface IFacilityInfoDao {
	
	public void addFacility(Amusement_facility facility);
	public void updateFacility(FacilityWithPosition facility);
	public void insertPosition(FacilityWithPosition facility);
	public void deletePosition(FacilityWithPosition facility);
	public List<FacilityWithPosition> getFacilityList();
	public List<Amusement_facility> getFacilityListWithName(@Param("name")String name);
	public void deleteFacility(int id);
}
