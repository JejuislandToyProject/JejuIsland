package com.kgitbank.jeju.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kgitbank.jeju.dto.CourseDetail;
import com.kgitbank.jeju.dto.FamousRestaurant;
import com.kgitbank.jeju.dto.MyCourse;
import com.kgitbank.jeju.dto.TouristSpot;
import com.kgitbank.jeju.mapper.CourseDetailMapper;
import com.kgitbank.jeju.mapper.FamousRestaurantMapper;
import com.kgitbank.jeju.mapper.MyCourseMapper;
import com.kgitbank.jeju.mapper.TouristSpotMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@RestController
public class MyPageRestController {
	@Autowired
	FamousRestaurantMapper restaurantMapper;
	
	@Autowired
	TouristSpotMapper touristSpotMapper;
	
	@Autowired
	MyCourseMapper courseMapper;
	
	@Autowired
	CourseDetailMapper courseDetailMapper;
	
	@GetMapping(value = "/getMyFamousRestaurantWrite", produces= MediaType.APPLICATION_JSON_VALUE)
	public List<FamousRestaurant> getMyFamousRestaurantWrite(HttpSession session) {
		String id = (String) session.getAttribute("id");
		List<FamousRestaurant> restaurants = restaurantMapper.listByUser(id);
		
		return restaurants;
	}
	@GetMapping(value = "/getMyTouristSpotWrite", produces= MediaType.APPLICATION_JSON_VALUE)
	public List<TouristSpot> getMyTouristSpotWrite(HttpSession session) {
		String id = (String) session.getAttribute("id");
		List<TouristSpot> touristSpots = touristSpotMapper.listByUserId(id);
		
		return touristSpots;
	}
	@GetMapping(value = "/getMyRoute", produces= MediaType.APPLICATION_JSON_VALUE)
	public List<CourseDetail> getMyRoute(HttpSession session) {
		String id = (String) session.getAttribute("id");
		List<MyCourse> courses = courseMapper.getListById(id);
		List<CourseDetail> details = new ArrayList<CourseDetail>();
		
		for(MyCourse course: courses) {
			details.addAll(courseDetailMapper.getListByCourseId(course.getId()));
		}
		log.info(details);
		return details;
	}
}
