package com.jinw0909.spring.lesson05.bo;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jinw0909.spring.lesson05.dao.WeatherhistoryDAO;
import com.jinw0909.spring.lesson05.model.Weatherhistory;

@Service
public class WeatherhistoryBO {
	
	@Autowired
	private WeatherhistoryDAO weatherhistoryDAO;
	
	public List<Weatherhistory> getWeatherhistory() {
		return weatherhistoryDAO.selectWeatherhistory();
	}
	
	public int addWeatherhistory(Weatherhistory weatherhistory) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		Date date = format.parse(weatherhistory.getDate());
//		weatherhistory.setDate();
		return weatherhistoryDAO.insertWeatherhistory(weatherhistory);
	}
}
