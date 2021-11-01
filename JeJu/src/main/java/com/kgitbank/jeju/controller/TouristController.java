package com.kgitbank.jeju.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int tourist_id = Integer.parseInt(request.getParameter("tourist_spot_id"));
		
		touristSpotMapper.addDTOSpotPositiveNum(tourist_id);
		
		/* int positive_num = touristSpotMapper.getListBySpotPositiveNum(tourist_id); */
		
		/*
		 * JSONObject obj = new JSONObject(); obj.put("positive_num", positive_num);
		 */
		
		/*
		 * response.setContentType("application/x-json; charset=UTF-8");
		 * response.getWriter().print(obj);
		 */
		return "redirect:/board/tourist";
		
	}
	
}