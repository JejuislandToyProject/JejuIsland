package com.kgitbank.jeju.admin.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.kgitbank.jeju.admin.dto.DailyVisit;
import com.kgitbank.jeju.admin.service.AdminService;

@RestController
public class AdminRestController {
	
	@Autowired
	AdminService visitService;

	@RequestMapping(value = "/admin/getChartData", method= RequestMethod.GET, 
	produces = MediaType.APPLICATION_JSON_VALUE)
	public List<DailyVisit> getChartData() {
		List<DailyVisit> dailyVisit = visitService.getChartData();
		return dailyVisit;
	};
	@RequestMapping(value = "/admin/getUserData", method= RequestMethod.GET, 
			produces = MediaType.APPLICATION_JSON_VALUE)
	public List<DailyVisit> getUserData() {
		List<DailyVisit> dailyVisit = visitService.getChartData();
		return dailyVisit;
	};
}
