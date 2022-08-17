package com.kasiyas.spring.test.jstl.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kasiyas.spring.test.jstl.dao.WeatherhistoryDAO;
import com.kasiyas.spring.test.jstl.model.Weatherhistory;

@Service
public class WeatherhistoryBO {
	@Autowired
	WeatherhistoryDAO weatherdao;
	
	public List<Weatherhistory> getWeatherList() {
		
		List<Weatherhistory> weatherList = weatherdao.selectWeather();
		
		return weatherList;
	}
	
	public int addWeather(Weatherhistory weather) {
		
		return weatherdao.insertWeather(weather);
	}
	
}
