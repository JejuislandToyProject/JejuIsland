package com.kgitbank.jeju.mapper;

import java.util.List;


import com.kgitbank.jeju.dto.TouristSpot;

public interface TouristSpotMapper {
	
	public void addTourist(TouristSpot touristSpot);
	public TouristSpot listById(int tourist_id);
	public  List<TouristSpot> listByUserd(String user_id);
	public void updateTourist(TouristSpot touristSpot);
	public void deleteTourist(int tourist_spot_id);
	public List<TouristSpot> listTourist();
	
	
}
