package com.jinw0909.spring.lesson03.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jinw0909.spring.lesson03.model.RealEstate;

@Repository
public interface RealEstateDAO {
	public List<RealEstate> selectRealEstate(@Param("id") int id);
	public List<RealEstate> selectRealEstateRent(@Param("rent") int rent);
}

