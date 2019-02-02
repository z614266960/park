package com.java.service;

import java.util.List;

import com.java.po.Amusement_facility;
import com.java.po.User;


public interface IFacilityInfoService {

	public void addFacility(Amusement_facility facility);
	public void updateFacility(Amusement_facility facility);
	public List<Amusement_facility> getFacilityList();
	public List<Amusement_facility> getFacilityListWithName(String name);
	public void deleteFacility(int id);
	
}
