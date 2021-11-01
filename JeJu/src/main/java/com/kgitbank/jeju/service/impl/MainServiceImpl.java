package com.kgitbank.jeju.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kgitbank.jeju.admin.mapper.MainMapper;
import com.kgitbank.jeju.dto.TouristSpot;
import com.kgitbank.jeju.mapper.TouristSpotMapper;
import com.kgitbank.jeju.service.MainService;

@Service
public class MainServiceImpl implements MainService{
	@Autowired
	TouristSpotMapper touristMapper;
	
	@Autowired
	MainMapper mainMapper;
	
	@Override
	public void setMainAttribute(Model model) {
		List<TouristSpot> spots = touristMapper.listOrderByLike();
		if(spots.size() < 4) {
			spots.addAll(spots);
		}
		int end = spots.size()/4 > 3? 3 * 4: (spots.size()/4) * 4;
		model.addAttribute("main_info", mainMapper.getList().get(0));
		model.addAttribute("tourist_spot", spots.subList(0, end));
	}
}
