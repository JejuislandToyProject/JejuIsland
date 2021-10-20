package com.kgitbank.jeju.service.impl;

import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.kgitbank.jeju.mapper.TouristSpotMapper;
import com.kgitbank.jeju.dto.TouristSpot;


public class BoardServiceImpl implements TouristSpotMapper {
	@Autowired
	TouristSpotMapper touristSpotMapper;
	
	// write
	@Override
	public void addTourist(TouristSpot touristSpot) {
		String name = touristSpot.getName();
		String title = touristSpot.getTitle();
		String description = touristSpot.getDescription();
		String image = touristSpot.getImage();
		String location = touristSpot.getLocation();
		
		title = title.replace("<", "&lt;");
		title = title.replace(">", "&gt;");
		
		name=name.replace("  ", "&nbsp;&nbsp;");
		title=title.replace("  ", "&nbsp;&nbsp;");
		
		description = description.replace("\n", "<br>");
		touristSpot.setName(name);
		touristSpot.setTitle(title);
		touristSpot.setDescription(description);
		touristSpot.setImage(image);
		touristSpot.setLocation(location);
		
		touristSpotMapper.addTourist(touristSpot);
	}
	
	//detail
	@Override
	public TouristSpot listById(int tourist_spot_id) {
		return touristSpotMapper.listById(tourist_spot_id);
	}
	
	//update
	@Override
	public void updateTourist(TouristSpot touristSpot) {
		touristSpotMapper.updateTourist(touristSpot);
	}
 	
	//delete
	@Override
	public void deleteTourist(int tourist_spot_id) {
		touristSpotMapper.deleteTourist(tourist_spot_id);
	}
	
	//list
	@Override
	public List<TouristSpot> listTourist() {
		return touristSpotMapper.listTourist();
	}
	
	// click increase
	@Override
	public void addPositive(int tourist_spot_id, HttpSession session) {

		long update_time=0;
		
		if(session.getAttribute("update_time_"+tourist_spot_id) != null) {
			update_time = (long)session.getAttribute("update_time_"+tourist_spot_id);
		}
		
		long current_time = System.currentTimeMillis();
		
		if(current_time - update_time > 5*1000) {
			touristSpotMapper.addPositive(tourist_spot_id);
			session.setAttribute("update_time_"+tourist_spot_id,current_time);
		}
	}

	@Override
	public void addPositive(int tourist_spot_id) {
		
	}
	
}
