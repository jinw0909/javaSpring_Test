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
	
	@RequestMapping("/lesson03/test02/1")
	public String test02_1() {
		
		RealEstate realEstate = new RealEstate();
		
		realEstate.setRealtorId(3);
		realEstate.setAddress("푸르지용 리버 303동 1104호");
		realEstate.setArea(89);
		realEstate.setType("매매");
		realEstate.setPrice(100000);
		
		int count =  realEstateBO.addRealEstate(realEstate);
		return "입력 성공 : " + count;
	}
	
	@RequestMapping("/lesson03/test02/2")
	public String test02_2(@RequestParam("realtorId") int realtorId) {
		
		int count =  realEstateBO.addRealEstateFromParam(realtorId, "썅떼빌리버 오피스텔 814호", 45, "월세", 100000, 120);
		return "입력 성공 : " + count;
	}
	
	@RequestMapping("/lesson03/test03")
	public String test03(@RequestParam("id") int id, @RequestParam("type") String type, @RequestParam("price") int price) {
		int count = realEstateBO.updateRealEstateById(id, type, price);
		return "update 완료 : " + count;
	}
	
	@RequestMapping("/lesson03/test04")
	public String test04(@RequestParam("id") int id) {
		int count = realEstateBO.deleteRealEstateById(id);
		return "delete 완료 : " + count;
	}
}
