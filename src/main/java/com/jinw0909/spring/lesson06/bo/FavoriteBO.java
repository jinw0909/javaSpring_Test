package com.jinw0909.spring.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jinw0909.spring.lesson06.dao.FavoriteDAO;
import com.jinw0909.spring.lesson06.model.Favorite;

@Service
public class FavoriteBO {
	
	@Autowired
	private FavoriteDAO favoriteDAO;
	
	public int addFavorite(String title, String url) {
		return favoriteDAO.insertFavorite(title, url);
	}
	
	public List<Favorite> getFavoriteList() {
		return favoriteDAO.selectFavoriteList();
	}
	
	public int deleteFavorite(int id) {
		return favoriteDAO.deleteFavorite(id);
	}
}
