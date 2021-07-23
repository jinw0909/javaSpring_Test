package com.jinw0909.spring.lesson03.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jinw0909.spring.lesson03.dao.RealEstateDAO;
import com.jinw0909.spring.lesson03.model.RealEstate;

@Service
public class RealEstateBO {
	@Autowired
	RealEstateDAO realEstateDAO;
	
	public List<RealEstate> getRealEstate(int id) {
		return realEstateDAO.selectRealEstate(id);
	}
	public List<RealEstate> getRealEstateRent(int rent) {
		return realEstateDAO.selectRealEstate(rent);
	}
}
