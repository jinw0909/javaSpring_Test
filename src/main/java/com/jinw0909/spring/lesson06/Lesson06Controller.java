package com.jinw0909.spring.lesson06;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jinw0909.spring.lesson06.bo.FavoriteBO;
import com.jinw0909.spring.lesson06.model.Favorite;

@RequestMapping("/lesson06/test01")
@Controller
public class Lesson06Controller {

	@Autowired
	private FavoriteBO favoriteBO;
	
	@GetMapping("/add_favorite_view")
	public String addFavoriteVeiw() {
		return "lesson06/addFavorite";
	}
	
	@PostMapping("/add_favorite")
	@ResponseBody
	public Map<String, String> addFavorite(
			@RequestParam("title") String title
			, @RequestParam("url") String url) {
		int count = favoriteBO.addFavorite(title, url);
		
		Map<String, String> result = new HashMap<>();
		
		if (count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		return result;
		
	}
	
	@GetMapping("/favorite_list") 
	public String favoriteList(Model model) {
		
		List<Favorite> favoriteList = favoriteBO.getFavoriteList();
		
		model.addAttribute("favoriteList", favoriteList);
		
		
		return "lesson06/favoriteList";
	}
	
	@PostMapping("/delete_favorite")
	@ResponseBody
	public Map<String, String> deleteFavorite(
			@RequestParam("id") int id
			) {
//		int parsedId = Integer.parseInt(id);
		Map<String, String> result = new HashMap<>();
		int count = favoriteBO.deleteFavorite(id);
		
		if (count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "failure");
		}
		
		return result;
	}
	
}
