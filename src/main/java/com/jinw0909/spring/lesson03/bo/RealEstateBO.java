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
	public List<RealEstate> getRealEstateAsAreaPrice(int area, int price) {
		return realEstateDAO.selectRealEstateAsAreaPrice(area, price);
	}
	
	public int addRealEstate(RealEstate realEstate) {
		return realEstateDAO.insertRealEstate(realEstate);
	}
	
	public int addRealEstateFromParam(int realtorId, String address, int area, String type, int price, int rentPrice) {
		return realEstateDAO.insertRealEstateFromParam(realtorId, address, area, type, price, rentPrice);
	}
}
