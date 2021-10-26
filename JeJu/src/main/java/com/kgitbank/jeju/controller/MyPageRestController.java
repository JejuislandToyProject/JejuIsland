package com.kgitbank.jeju.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kgitbank.jeju.dto.FamousRestaurant;
import com.kgitbank.jeju.dto.TouristSpot;
import com.kgitbank.jeju.mapper.FamousRestaurantMapper;
import com.kgitbank.jeju.mapper.TouristSpotMapper;

@RestController
public class MyPageRestController {
	@Autowired
	FamousRestaurantMapper restaurantMapper;
	
	@Autowired
	TouristSpotMapper touristSpotMapper;
	
	@GetMapping(value = "/getMyFamousRestaurantWrite", produces= MediaType.APPLICATION_JSON_VALUE)
	public List<FamousRestaurant> getMyFamousRestaurantWrite(HttpSession session) {
		String id = (String) session.getAttribute("id");
		List<FamousRestaurant> restaurants = restaurantMapper.listByUser(id);
		
		return restaurants;
	}
	@GetMapping(value = "/getMyTouristSpotWrite", produces= MediaType.APPLICATION_JSON_VALUE)
	public List<TouristSpot> getMyTouristSpotWrite(HttpSession session) {
		String id = (String) session.getAttribute("id");
		List<TouristSpot> touristSpots = touristSpotMapper.listByUserd(id);
		
		return touristSpots;
	}
}
