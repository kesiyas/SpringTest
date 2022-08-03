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
		
		Map<String, Object> info1 = new HashMap<>();
		
		info1.put("rate", 15);
		info1.put("director", "봉준호");
		info1.put("time", 131);
		info1.put("title", "기생충");
		movie.add(info1);
		
		Map<String, Object> info2 = new HashMap<>();
		info2.put("rate", 0);
		info2.put("director", "로베르토 베니니");
		info2.put("time", 116);
		info2.put("title", "인생은 아름다워");
		movie.add(info2);
		
		Map<String, Object> info3 = new HashMap<>();
		info3.put("rate", 19);
		info3.put("director", "윤종빈");
		info3.put("time", 147);
		info3.put("title", "범죄와의 전쟁 : 나쁜놈들 전성시대");
		movie.add(info3);
		
		Map<String, Object> info4 = new HashMap<>();
		info4.put("rate", 15);
		info4.put("director", "프란시스 로렌스");
		info4.put("time", 137);
		info4.put("title", "헝거게임");
		movie.add(info4);
		
		return movie;
	}
	
	@ResponseBody
	@RequestMapping("/test02/2")
	public List<User> listPrint() {
		
		List<User> list = new ArrayList<>();
		
		User user1 = new User();
		user1.setTitle("안녕하세요 가입인사 드립니다");
		user1.setUser("hugulu");
		user1.setContent("안녕하세요. 가입했어요");
		list.add(user1);
		
		User user2 = new User();
		user2.setTitle("헐 대박");
		user2.setUser("bada");
		user2.setContent("오늘 목요일이었네");
		list.add(user2);
		
		User user3 = new User();
		user3.setTitle("안녕하세요");
		user3.setUser("dulumary");
		user3.setContent("....");
		list.add(user3);
		
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
