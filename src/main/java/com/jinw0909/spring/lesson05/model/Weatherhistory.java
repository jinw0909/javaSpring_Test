package com.jinw0909.spring.lesson05.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Weatherhistory {
	private int id;
	private Date date;
	private String weather;
	private double temperatures;
	private double precipitation;
	private String microDust;
	private double windSpeed;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(String date) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			this.date = format.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public String getWeather() {
		return weather;
	}
	public void setWeather(String weather) {
		this.weather = weather;
	}
	public double getTemperatures() {
		return temperatures;
	}
	public void setTemperatures(double temperatures) {
		this.temperatures = temperatures;
	}
	public double getPrecipitation() {
		return precipitation;
	}
	public void setPrecipitation(double precipitation) {
		this.precipitation = precipitation;
	}
	public String getMicroDust() {
		return microDust;
	}
	public void setMicroDust(String microDust) {
		this.microDust = microDust;
	}
	public double getWindSpeed() {
		return windSpeed;
	}
	public void setWindSpeed(double windSpeed) {
		this.windSpeed = windSpeed;
	}
}
