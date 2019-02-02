package com.java.service;

import java.util.List;

import com.java.po.Amusement_information;

public interface IAmusementInfoService {
	public void addAmusement(Amusement_information amusement);
	public void updateAmusement(Amusement_information amusement);
	public List<Amusement_information > getAmusementList();

}
