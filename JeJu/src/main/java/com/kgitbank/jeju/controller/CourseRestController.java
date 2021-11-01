package com.kgitbank.jeju.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.kgitbank.jeju.dto.Area;
import com.kgitbank.jeju.dto.SpotAndRestaurant;
import com.kgitbank.jeju.dto.Weather;
import com.kgitbank.jeju.mapper.AreaXMLMapper;
import com.kgitbank.jeju.mapper.FamousRestaurantMapper;
import com.kgitbank.jeju.mapper.SpotAndRestaurantMapper;
import com.kgitbank.jeju.mapper.TouristSpotMapper;
import com.kgitbank.jeju.service.impl.WeatherServiceImpl;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/travelCourse")
@RestController
public class CourseRestController {

	@Autowired
	AreaXMLMapper areaMapper;
	
	@Autowired
	TouristSpotMapper spotMapper;
	
	@Autowired
	FamousRestaurantMapper matzipMapper;
	
	@Autowired
	SpotAndRestaurantMapper spotAndMatzipMapper;
	
	@Autowired
	WeatherServiceImpl weatherServiceImpl;
	
	@GetMapping(value="/course/{title}", produces = "application/json; charset=UTF-8")
	public List<?> getList(@PathVariable("title") String title) {

		if (title.equals("matzip")) {
			return matzipMapper.famousList();
		} else {
			return spotMapper.courseList();
		}
	}
	
	@GetMapping(value="/select/{title}", produces = "application/json; charset=UTF-8")
	public SpotAndRestaurant getSelecte(@PathVariable("title") String title) {
		
		return spotAndMatzipMapper.getDTOSpotAndRestaurant(title);

	}
	
	@GetMapping(value="/search/{textValue}", produces = "application/json; charset=UTF-8")
	public List<SpotAndRestaurant> getSearch(@PathVariable("textValue") String textValue) {
			
		return spotAndMatzipMapper.getListBySearchTitle(textValue);
	}
	
	@GetMapping(value="/modalSearch/{title}", produces = "application/json; charset=UTF-8")
	public List<SpotAndRestaurant> getSearch2(@PathVariable("title") String title) {
		
		String names[] = title.split(",");
		List<SpotAndRestaurant> list = new ArrayList<>();
		
		for(int i =0; i < names.length; ++i) {
			list.add((SpotAndRestaurant) spotAndMatzipMapper.getDTOSpotAndRestaurant(names[i]));
			
		}
		return list;	
	}

	@GetMapping(value ="/GetAreas/{title}", produces ="application/json; charset=UTF-8")
	public Area getIntroduce(@PathVariable("title") String title) { 
		
		return areaMapper.getIntroduce(title); 
	}
	
	
	@GetMapping(value = "/weather", produces ="application/json; charset=UTF-8")
	public Weather getWeather(Model model) throws Exception {
		
		return weatherServiceImpl.getWeather();	
	}	
	
}
