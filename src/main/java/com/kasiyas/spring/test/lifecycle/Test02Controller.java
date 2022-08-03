package com.kasiyas.spring.test.lifecycle;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/lifecycle")
public class Test02Controller {

	@ResponseBody
	@RequestMapping("/test02/1")
	public List<Map<String, Object>> movieInfo() {
		
		List<Map<String, Object>> movie = new ArrayList<>();
		
		Map<String, Object> info = new HashMap<>();
		
		info.put("rate", 15);
		info.put("director", "봉준호");
		info.put("time", 131);
		info.put("title", "기생충");
		movie.add(info);
		
		info = new HashMap<>();
		info.put("rate", 0);
		info.put("director", "로베르토 베니니");
		info.put("time", 116);
		info.put("title", "인생은 아름다워");
		movie.add(info);
		
		info = new HashMap<>();
		info.put("rate", 19);
		info.put("director", "윤종빈");
		info.put("time", 147);
		info.put("title", "범죄와의 전쟁 : 나쁜놈들 전성시대");
		movie.add(info);
		
		info = new HashMap<>();
		info.put("rate", 15);
		info.put("director", "프란시스 로렌스");
		info.put("time", 137);
		info.put("title", "헝거게임");
		movie.add(info);
		
		return movie;
	}
	
	@ResponseBody
	@RequestMapping("/test02/2")
	public List<User> listPrint() {
		
		List<User> list = new ArrayList<>();
		
		User user = new User();
		user.setTitle("안녕하세요 가입인사 드립니다");
		user.setUser("hugulu");
		user.setContent("안녕하세요. 가입했어요");
		list.add(user);
		
		user = new User();
		user.setTitle("헐 대박");
		user.setUser("bada");
		user.setContent("오늘 목요일이었네");
		list.add(user);
		
		user = new User();
		user.setTitle("안녕하세요");
		user.setUser("dulumary");
		user.setContent("....");
		list.add(user);
		
		return list;
	}
	
	@RequestMapping("/test02/3")
	@ResponseBody
	public ResponseEntity<User> user() {
		User user = new User();
		user.setTitle("안녕하세요 가입인사 드립니다");
		user.setUser("hugulu");
		user.setContent("안녕하세요. 가입했어요");
		
		ResponseEntity<User> entity = new ResponseEntity(user, HttpStatus.INTERNAL_SERVER_ERROR);
	
		return entity;
	}
	
	
	
	
	
}
