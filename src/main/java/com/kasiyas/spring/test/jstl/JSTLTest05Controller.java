package com.kasiyas.spring.test.jstl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kasiyas.spring.test.jstl.bo.WeatherhistoryBO;
import com.kasiyas.spring.test.jstl.model.Weatherhistory;

@Controller
@RequestMapping("/jstl/test05")
public class JSTLTest05Controller {
	
	@Autowired
	WeatherhistoryBO weatherbo;
	
	@GetMapping("/select")
	public String weatherhistory(Model model) {
			
		List<Weatherhistory> weatherList = weatherbo.getWeatherList();
		
		model.addAttribute("weatherList", weatherList);
				
		return "jstl/weather/test05";

	}
	
	@GetMapping("/input")
	public String weatherInput() {
		
		return "jstl/weather/test05_Input";
	}
	
	@PostMapping("/add/view")
	public String addWeatherView(
			@ModelAttribute Weatherhistory weather
			,Model model
			) {
		
		int count = weatherbo.addWeather(weather);
		
		model.addAttribute("weatherList", weather);
		
		return "redirect:/jstl/test05/select";		
				
	}
	
}
