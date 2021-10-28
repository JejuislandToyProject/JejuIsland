package com.kgitbank.jeju.admin.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.kgitbank.jeju.admin.dto.DailyVisit;
import com.kgitbank.jeju.admin.service.VisitService;

@RestController
public class AdminRestController {
	
	@Autowired
	VisitService visitService;

	@RequestMapping(value = "/getChartData", method= RequestMethod.GET, 
	produces = MediaType.APPLICATION_JSON_VALUE)
	public List<DailyVisit> getChartData() {
		List<DailyVisit> dailyVisit = visitService.getDailyVisit();
		return dailyVisit;
	};
}
