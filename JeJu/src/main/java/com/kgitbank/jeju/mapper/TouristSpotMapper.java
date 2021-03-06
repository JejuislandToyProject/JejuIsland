package com.kgitbank.jeju.mapper;

import java.util.List;


import com.kgitbank.jeju.dto.TouristSpot;

public interface TouristSpotMapper {
	
	public void addTourist(TouristSpot touristSpot);
	public List<TouristSpot> listOrderByLike();
	public TouristSpot listById(int tourist_id);
	public TouristSpot listView(int tourist_spot_id);
	public  List<TouristSpot> listByUserId(String user_id);
	public void updateTourist(TouristSpot touristSpot);
	public void deleteTourist(int tourist_spot_id);
	public List<TouristSpot> listTourist();
	public List<TouristSpot> courseList();
	public TouristSpot searchSpot(String title);
	public List<TouristSpot> getSpotSearch(String textValue);
	public void addLike(int id);
	public TouristSpot getLike(int id);
	
	public void addDTOSpotPositiveNum(int tourist_spot_id);
	public TouristSpot getListBySpotPositiveNum(int tourist_spot_id);
		
}
