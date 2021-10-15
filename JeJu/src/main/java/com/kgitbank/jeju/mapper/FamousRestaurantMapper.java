package com.kgitbank.jeju.mapper;

import java.util.List;

import com.kgitbank.jeju.dto.FamousRestaurant;

public interface FamousRestaurantMapper {
	public List<FamousRestaurant> list();
	public List<FamousRestaurant> listByUser(String user_id);
	public int addRestaurant(FamousRestaurant fr);
}
