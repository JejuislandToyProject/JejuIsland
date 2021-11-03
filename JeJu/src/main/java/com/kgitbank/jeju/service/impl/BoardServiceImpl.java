package com.kgitbank.jeju.service.impl;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kgitbank.jeju.mapper.TouristSpotMapper;
import com.kgitbank.jeju.service.BoardService;
import com.kgitbank.jeju.dto.TouristSpot;

@Service
public class BoardServiceImpl implements BoardService {
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
	public 	TouristSpot listById(int tourist_spot_id) {
		return  touristSpotMapper.listById(tourist_spot_id);
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
	
	
	@Override
	public List<TouristSpot> listByUserd(String user_id, HttpSession session) {
		
		List<TouristSpot> touristSpots =touristSpotMapper.listByUserId(user_id);
		String id = (String) session.getAttribute("id");
		
		return touristSpots;
	}
	
	


	@Override
	public List<TouristSpot> listByUserd(String user_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TouristSpot listView(int tourist_spot_id) {
		// TODO Auto-generated method stub
		return  touristSpotMapper.listView(tourist_spot_id);
	}

	@Override
	public TouristSpot addPositive(int tourist_spot_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int listPositive(int tourist_spot_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	/*
	 * @Override public TouristSpot addPositive(int tourist_spot_id) { // TODO
	 * Auto-generated method stub return
	 * touristSpotMapper.addDTOSpotPositiveNum(tourist_spot_id); }
	 * 
	 * @Override public int listPositive(int tourist_spot_id) { // TODO
	 * Auto-generated method stub return
	 * touristSpotMapper.getListBySpotPositiveNum(tourist_spot_id); }
	 */


	
}
