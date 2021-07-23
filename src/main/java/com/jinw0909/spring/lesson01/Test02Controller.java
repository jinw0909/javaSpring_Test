package com.jinw0909.spring.lesson01;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/lesson01/test02")
@RestController
public class Test02Controller {
	
	@RequestMapping("/1")
	public List<Map<String, Object>> printList() {
		List<Map<String, Object>> list = new ArrayList<>();
		
		Map<String, Object> map = new HashMap<>();
		map.put("rate", 15);
		map.put("director", "봉준호");
		map.put("time", 131);
		map.put("title", "기생충");
		list.add(map);
		
		map = new HashMap<>();
		map.put("rate", 15);
		map.put("director", "봉준호");
		map.put("time", 131);
		map.put("title", "기생충");
		list.add(map);

		return list;
	}
	
	@RequestMapping("/2")
	public List<BoardContent> boardList() {
		
		List<BoardContent> list = new ArrayList<>();
		
		BoardContent content = new BoardContent("안녕하세요 가입인사드립니다.", "jinw0909", "가입했습니다.");
		list.add(content);
		
		content = new BoardContent("헐 대박", "bada", "오늘 목요일인줄");
		list.add(content);
		
		return list;
		
		
	}
	
	@RequestMapping("/3")
	public ResponseEntity<BoardContent> entity() {
		BoardContent content = new BoardContent("안녕하세요 가입인사드립니다.", "jinw0909", "가입했습니다.");
		ResponseEntity<BoardContent> entity = new ResponseEntity<>(content, HttpStatus.INTERNAL_SERVER_ERROR);
		return entity;
		
	}
}
