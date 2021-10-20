package com.kgitbank.jeju.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kgitbank.jeju.dto.TouristSpot;
import com.kgitbank.jeju.mapper.TouristSpotMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TouristController {
	
	@Autowired
	private TouristSpotMapper touristSpotMapper;
	
	@RequestMapping(value = "/border", method = RequestMethod.GET)
	public String TourList(Model model) throws Exception {
		List<TouristSpot> test = touristSpotMapper.listTourist();
		log.info("현재 위치" + test + toString());
		model.addAttribute("tourist_spot", test);
		
		return "border/touristBoard";
	}
	
}
