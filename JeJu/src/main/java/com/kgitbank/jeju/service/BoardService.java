package com.kgitbank.jeju.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.kgitbank.jeju.dto.TouristSpot;
import com.kgitbank.jeju.mapper.TouristSpotMapper;

public interface BoardService {

	List<TouristSpot> listTourist();
	
	void updateTourist(TouristSpot touristSpot);
	void addTourist(TouristSpot touristSpot);
	TouristSpot listById(int tourist_spot_id);
	void deleteTourist(int tourist_spot_id);
	TouristSpot listView(int tourist_spot_id);
	
	List<TouristSpot> listByUserd(String user_id, HttpSession session);
	List<TouristSpot> listByUserd(String user_id);
	public TouristSpot addPositive(int tourist_spot_id);
	public int listPositive(int tourist_spot_id);
}
