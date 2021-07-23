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
	@RequestMapping("/lesson03/test01")
	public List<RealEstate> test01_rent(@RequestParam(value="rent", required=false ) int rent) {
		return realEstateBO.getRealEstateRent(rent); 
	}
}
