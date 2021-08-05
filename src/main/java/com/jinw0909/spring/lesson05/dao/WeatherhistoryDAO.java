package com.jinw0909.spring.lesson05.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jinw0909.spring.lesson05.model.Weatherhistory;

@Repository
public interface WeatherhistoryDAO {
	public List<Weatherhistory> selectWeatherhistory();
}
