package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.IFacilityInfoDao;
import com.java.po.Amusement_facility;
import com.java.po.FacilityWithPosition;
import com.java.service.IFacilityInfoService;

@Service
public class FacilityInfoServiceImpl implements IFacilityInfoService {

	@Autowired
    private IFacilityInfoDao facilityDao;
	
	public void addFacility(Amusement_facility facility) {
		facilityDao.addFacility(facility);
	}
	public void updateFacility(FacilityWithPosition facility) {
		facilityDao.updateFacility(facility);
		facilityDao.deletePosition(facility);
		facilityDao.insertPosition(facility);
	}

	public List<FacilityWithPosition> getFacilityList() {
		return facilityDao.getFacilityList();
	}
	
	public List<Amusement_facility> getFacilityListWithName(String name) {
		return facilityDao.getFacilityListWithName(name);
	}

	public void deleteFacility(int id) {
		facilityDao.deleteFacility(id);
	}
}
