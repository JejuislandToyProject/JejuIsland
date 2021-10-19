package com.kgitbank.jeju.service.impl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kgitbank.jeju.dto.FamousRestaurant;
import com.kgitbank.jeju.mapper.FamousRestaurantMapper;
import com.kgitbank.jeju.service.MyPageService;

@Service
public class MyPageServiceImpl implements MyPageService{
	@Autowired
	FamousRestaurantMapper restaurantMapper;
	
	@Override
	public Model setModel(Model model, String id) {
		List<FamousRestaurant> restaurants = restaurantMapper.listByUser(id);
		List<String> registerDate = new ArrayList<String>();
		
		
		for(FamousRestaurant restaurant: restaurants) {
			DateFormat format = new SimpleDateFormat("yyyy/MM/dd");
			String dateStr = format.format(restaurant.getRegistration_time());
			registerDate.add(dateStr);
		}
		
		model.addAttribute("restaurants", restaurants);
		model.addAttribute("registerDate", registerDate);
		
		return model;
	}
}
