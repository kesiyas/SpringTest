package com.kasiyas.spring.test.lifecycle;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;

@Controller
public class Test02Controller {

	public List<Map<String, Object>> movieInfo() {
		
		List<Map<String, Object>> movie = new ArrayList<>();
		
		Map<String, Object> info = new HashMap<>();
		
		info.put("rate", 15);
		info.put("director", "봉준호");
		info.put("time", 131);
		info.put("title", "기생충");
		movie.add(info);
		
		
		
		
		
		
	}
	
	
	
}
