package com.kgitbank.jeju.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
		return "/mypage/test";
	}
}
