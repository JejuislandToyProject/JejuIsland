package com.kgitbank.jeju.mapper;

import java.util.List;

import com.kgitbank.jeju.dto.FamousRestaurant;
import com.kgitbank.jeju.dto.TouristSpot;

public interface FamousRestaurantMapper {
	public List<FamousRestaurant> list();
	public List<FamousRestaurant> listOrderByLike();
	public List<FamousRestaurant> listByUser(String user_id);
	public void addRestaurant(FamousRestaurant fr);
	public List<FamousRestaurant> famousList();
	public FamousRestaurant getFamous(String title);
	public FamousRestaurant listView(int famous_restaurant_id);
	public List<FamousRestaurant> getRestSearch(String textValue);
	public List<FamousRestaurant> polygonSearch(String textValue);
	
	public void addLike(int id);
	public FamousRestaurant getLike(int id);
}
