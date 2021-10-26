package com.kgitbank.jeju.mapper;

import java.util.List;

import com.kgitbank.jeju.dto.TouristSpot;
import com.kgitbank.jeju.service.impl.BoardServiceImpl;

public interface TouristSpotMapper {

	
	public void addTourist(TouristSpot touristSpot);
	public TouristSpot listById(int tourist_id);
	public  List<TouristSpot> listByUserd(String user_id);
	public void updateTourist(TouristSpot touristSpot);
	public void deleteTourist(int tourist_spot_id);
	public List<TouristSpot> listTourist();
	public static List<TouristSpot> getSearchList(TouristSpot touristSpot) {
		return null;
	}
}
