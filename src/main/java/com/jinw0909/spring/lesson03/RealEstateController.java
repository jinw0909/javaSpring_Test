package com.jinw0909.spring.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jinw0909.spring.lesson03.bo.RealEstateBO;
import com.jinw0909.spring.lesson03.model.RealEstate;

@RestController
public class RealEstateController {
	
	@Autowired
	RealEstateBO realEstateBO;
	
	@RequestMapping("/lesson03/test01")
	public List<RealEstate> test01(@RequestParam(value="id", required=false ) int id) {
		return realEstateBO.getRealEstate(id); 
	}
//	@RequestMapping("/lesson03/test01/2")
//	public List<RealEstate> test01_rent(@RequestParam(value="rent", required=false ) int rent) {
//		return realEstateBO.getRealEstateRent(rent); 
//	}
	
	@RequestMapping("/lesson03/test01/3")
	public List<RealEstate> test01_3(@RequestParam(value="area", required=false ) int area, @RequestParam(value="price", required=false ) int price) {
		return realEstateBO.getRealEstateAsAreaPrice(area, price);
	}
	
	@RequestMapping("/lesson03/test02")
	public String test02(RealEstate realestate) {
		
		RealEstate realEstate = new RealEstate();
		
		realEstate.setRealtorId(2);
		realEstate.setAddress("서울시 중구 하왕십리동");
		realEstate.setArea(150);
		realEstate.setType("매매");
		realEstate.setPrice(150000000);
		
		int count =  realEstateBO.addRealEstate(realEstate);
		return "insert success " + count;
	}
}
