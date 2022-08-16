package com.kasiyas.spring.test.jstl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kasiyas.spring.test.jstl.bo.WeatherhistoryBO;
import com.kasiyas.spring.test.jstl.model.Weatherhistory;

@Controller
@RequestMapping("/jstl/test05")
public class JSTLTest05Controller {
	@Autowired
	WeatherhistoryBO weatherbo;
	
	@GetMapping("/1")
	public String weatherhistory(Model model) {
		
		List<Weatherhistory> weatherList = weatherbo.getWeatherList();
		
		model.addAttribute("weatherList", weatherList);
		
		return "jstl/test05";

	}
	
}
