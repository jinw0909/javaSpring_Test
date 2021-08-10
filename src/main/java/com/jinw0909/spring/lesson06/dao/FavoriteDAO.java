package com.jinw0909.spring.lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jinw0909.spring.lesson06.model.Favorite;

@Repository
public interface FavoriteDAO {
	public int insertFavorite(
			@Param("title") String title, 
			@Param("url") String url);
	
	public List<Favorite> selectFavoriteList();
	
	public int deleteFavorite(
			@Param("id") int id 
			);
}	
