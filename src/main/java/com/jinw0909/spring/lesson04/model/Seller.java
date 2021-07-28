package com.jinw0909.spring.lesson04.model;

import java.util.Date;

public class Seller {
	private int id;
	private String nickname;
	private String profileImageUrl;
	private double temperature;
	private Date createdAt;
	private Date upadatedAt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getProfileImageUrl() {
		return profileImageUrl;
	}
	public void setProfileImageUrl(String profileImageUrl) {
		this.profileImageUrl = profileImageUrl;
	}
	public double getTemperature() {
		return temperature;
	}
	public void setTemperature(double temperature) {
		this.temperature = temperature;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpadatedAt() {
		return upadatedAt;
	}
	public void setUpadatedAt(Date upadatedAt) {
		this.upadatedAt = upadatedAt;
	}
	
	
}
