package com.kgitbank.jeju.mapper;

import java.util.List;

import javax.servlet.http.HttpSession;


import com.kgitbank.jeju.dto.TouristSpot;

public interface TouristSpotMapper {
	
	public void addTourist(TouristSpot touristSpot);
	public TouristSpot listById(int tourist_spot_id);
	public void updateTourist(TouristSpot touristSpot);
	public void deleteTourist(int tourist_spot_id);
	public List<TouristSpot> listTourist();
	public void addPositive(int tourist_spot_id);
	public void addPositive(int tourist_spot_id, HttpSession session);
	
	
	
}
