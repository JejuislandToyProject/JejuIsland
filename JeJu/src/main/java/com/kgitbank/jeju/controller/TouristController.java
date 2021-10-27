package com.kgitbank.jeju.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kgitbank.jeju.mapper.TouristSpotMapper;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
@RequestMapping("/board")
public class TouristController {
	
	@Autowired
	private TouristSpotMapper touristSpotMapper;
	
	@RequestMapping(value = "/tourist", method = RequestMethod.GET)
	public String TourList(HttpSession session) throws Exception {
		String id = (String)session.getAttribute("id");
		
		log.info("id: "+id);
		return "board/touristBoard";
	}

	
}