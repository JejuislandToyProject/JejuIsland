package com.kgitbank.jeju.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kgitbank.jeju.dto.TouristSpot;
import com.kgitbank.jeju.mapper.TouristSpotMapper;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
@RequestMapping("/board")
public class TouristController {
	
	@Autowired
	private TouristSpotMapper touristSpotMapper;
	
	@RequestMapping(value = "/tourist", method = RequestMethod.GET)
	public String TourList() throws Exception {

		return "board/touristBoard";
	}
	
	@GetMapping("/getSearchList")
	@ResponseBody
	private List<TouristSpot> getSearchList(@RequestParam("type") String type,
			@RequestParam("keyword") String keyword){
		TouristSpot touristSpot = new TouristSpot();
		touristSpot.setType(type);
		touristSpot.setKeyword(keyword);
		return TouristSpotMapper.getSearchList(touristSpot);
	}
}