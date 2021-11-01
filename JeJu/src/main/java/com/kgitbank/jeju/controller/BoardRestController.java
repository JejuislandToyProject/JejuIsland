package com.kgitbank.jeju.controller;


import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RestController;

import com.kgitbank.jeju.dto.FamousRestaurant;
import com.kgitbank.jeju.dto.TouristSpot;
import com.kgitbank.jeju.mapper.FamousRestaurantMapper;
import com.kgitbank.jeju.mapper.LocationMapper;
import com.kgitbank.jeju.mapper.TouristSpotMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class BoardRestController {
	
	@Autowired
	private TouristSpotMapper touristSpotMapper;
	@Autowired
	private FamousRestaurantMapper famousRestaurantMapper;
	
	@Autowired
	LocationMapper locationMapper; 
	
	
	@RequestMapping(value = "/touristBoard", method= RequestMethod.GET, 
					produces = MediaType.APPLICATION_JSON_VALUE)
	public List<TouristSpot> TourList(Model model) throws Exception {
		List<TouristSpot> tourlistSpots = touristSpotMapper.listTourist();
		
		
		return tourlistSpots;
	}
	
	@RequestMapping(value = "/RestaurantBoard", method= RequestMethod.GET, 
			produces = MediaType.APPLICATION_JSON_VALUE)
	public List<FamousRestaurant> list(Model model) throws Exception {
	List<FamousRestaurant> famousRestaurants = famousRestaurantMapper.list();
	
	return famousRestaurants;
	}
	
	@GetMapping(value="/spotSearch/{textValue}", produces = "application/json; charset=UTF-8")
	public List<TouristSpot> getSpotSearch(@PathVariable("textValue") String textValue) {
		List<TouristSpot> searchList = touristSpotMapper.getSpotSearch(textValue);
		log.info(textValue);
		log.info(searchList + "");
		return searchList;	
	}
	
	@GetMapping(value="/restSearch/{textValue}", produces = "application/json; charset=UTF-8")
	public List<FamousRestaurant> getRestSearch(@PathVariable("textValue") String textValue) {
		String[] location = {"Aewol", "Hanlim", "Hankyung", "Daejeong", "Andeok", "Seogwipo", "Namwon", "Pyoseon" ,"Seongsan" ,"Gujwa" ,"Jocheon" ,"Jeju"};
		List<FamousRestaurant> searchList;
		boolean check = false;
		for(int i = 0; i < location.length; ++i) {
			if(textValue.equals(location[i])) {
				check = true;
			}
		}				
		if(check) {
			searchList = famousRestaurantMapper.polygonSearch(textValue);
		}else {
			searchList = famousRestaurantMapper.getRestSearch(textValue);
		}   
		return searchList;	
	}
	
	@GetMapping(value="/board/like/{id}", produces = "application/json; charset=UTF-8")
	public TouristSpot updateLikeCnt(@PathVariable int id) {
		touristSpotMapper.addDTOSpotPositiveNum(id);
		TouristSpot getLike = touristSpotMapper.getListBySpotPositiveNum(id);

		return getLike;	
	}
	
	@GetMapping(value="/board/restlike/{id}", produces = "application/json; charset=UTF-8")
	public FamousRestaurant updateRestLike(@PathVariable int id) {
		famousRestaurantMapper.addDTORestPositiveNum(id);
		FamousRestaurant getLike = famousRestaurantMapper.getListByRestPositiveNum(id);

		return getLike;	
	}

}
