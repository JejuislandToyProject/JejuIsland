package com.kgitbank.jeju.mapper;

import java.util.List;

import com.kgitbank.jeju.dto.SpotAndRestaurant;

public interface SpotAndRestaurantMapper {
	
	public SpotAndRestaurant getDTOSpotAndRestaurant(String title);
	
	public List<SpotAndRestaurant> getListBySearchTitle(String title);
	
	
}
