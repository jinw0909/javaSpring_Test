package com.jinw0909.spring.lesson03.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jinw0909.spring.lesson03.model.RealEstate;

@Repository
public interface RealEstateDAO {
	// id로
	public List<RealEstate> selectRealEstate(@Param("id") int id);
	
	// 월세조건
	public List<RealEstate> selectRealEstateRent(@Param("rent") int rent);
	
	// 복합조건
	public List<RealEstate> selectRealEstateAsAreaPrice(@Param("area") int area, @Param("price") int price);

	// insert
	public int insertRealEstate(RealEstate realEstate);

}

