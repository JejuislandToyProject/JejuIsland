package com.kgitbank.jeju.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonParser;
import com.kgitbank.jeju.dto.FamousRestaurant;
import com.kgitbank.jeju.mapper.FamousRestaurantMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class JejuController {
	
	@Autowired
	FamousRestaurantMapper restaurantMapper;
	
	@RequestMapping(value="/", method = {RequestMethod.GET, RequestMethod.POST})
	public String index() {
		log.info("show main");
		return "/index";
	}
	
	@GetMapping("/login/callback")
	public void callback() {
		log.info("controller = callback");
	}
	
	@GetMapping("/mypage")
	public String mypage(HttpSession session, Model model) {
		String id = (String) session.getAttribute("id");
		if(id == null) {
			return "redirect:/login";
		}

		
		List<FamousRestaurant> restaurants = restaurantMapper.listByUser(id);
		model.addAttribute("restaurants", restaurants);
		
		log.info(restaurants);
		return "/mypage/test";
	}
}
