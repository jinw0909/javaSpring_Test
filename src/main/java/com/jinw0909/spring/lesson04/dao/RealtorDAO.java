package com.jinw0909.spring.lesson04.dao;

import org.springframework.stereotype.Repository;

import com.jinw0909.spring.lesson04.model.Realtor;

@Repository
public interface RealtorDAO {
	public int insertRealtor(Realtor realtor);
}
