package com.kgitbank.jeju.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kgitbank.jeju.dto.FamousRestaurant;
import com.kgitbank.jeju.mapper.FamousRestaurantMapper;

@RestController
public class MyPageRestController {
	@Autowired
	FamousRestaurantMapper restaurantMapper;
	
	@GetMapping(value = "/getMyWrite", produces= MediaType.APPLICATION_JSON_VALUE)
	public List<FamousRestaurant> getMyWrite(HttpSession session) {
		String id = (String) session.getAttribute("id");
		List<FamousRestaurant> restaurants = restaurantMapper.listByUser(id);
		
		return restaurants;
	}
}
