package com.kgitbank.jeju.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.kgitbank.jeju.dto.TouristSpot;

public interface BoardService {
	
	public void create(TouristSpot touristSpot) throws Exception;
	public TouristSpot read(int tourist_spot_id) throws Exception;
	public void update(TouristSpot touristSpot) throws Exception;
	public void delete(int tourist_spot_id) throws Exception;
	public List<TouristSpot> listAll() throws Exception;
	public void increaseView(int tourist_spot_id, HttpSession session) throws Exception;
	
}
