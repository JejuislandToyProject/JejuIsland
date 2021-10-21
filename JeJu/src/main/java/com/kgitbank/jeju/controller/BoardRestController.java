package com.kgitbank.jeju.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.kgitbank.jeju.dto.TouristSpot;
import com.kgitbank.jeju.mapper.TouristSpotMapper;


@RestController
public class BoardRestController {
	
	@Autowired
	private TouristSpotMapper touristSpotMapper;
	
	@RequestMapping(value = "/touristBoard", method= RequestMethod.GET, 
					produces = MediaType.APPLICATION_JSON_VALUE)
	public List<TouristSpot> TourList(Model model) throws Exception {
		List<TouristSpot> tourlistSpots = touristSpotMapper.listTourist();

		return tourlistSpots;
	}

}
