package com.kgitbank.jeju.mapper;

import java.util.List;

import com.kgitbank.jeju.dto.SpotAndRestaurant;

public interface SpotAndRestaurantXMLMapper {
	
	public SpotAndRestaurant getItem(String title);
	
	public List<SpotAndRestaurant> getSearch(String title);
	
	
}
