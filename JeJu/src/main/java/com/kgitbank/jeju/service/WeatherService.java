package com.kgitbank.jeju.service;

import org.springframework.ui.Model;

import com.kgitbank.jeju.dto.weatherDto;


public interface WeatherService {
	
	public weatherDto getJejuWeather();

}
