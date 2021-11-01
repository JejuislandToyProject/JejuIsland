package com.kgitbank.jeju.admin.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.kgitbank.jeju.admin.dto.DailyVisit;
import com.kgitbank.jeju.admin.service.AdminService;
import com.kgitbank.jeju.dto.User;

import lombok.extern.log4j.Log4j;

@Log4j
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
	@RequestMapping(value = "/admin/getUserData", method= RequestMethod.GET)
	public List<User> getUserData() {
		List<User> data = visitService.getUserData();
		return data;
	};
	
	@RequestMapping(value="/admin/user_ban", method= RequestMethod.POST,
			produces = MediaType.APPLICATION_JSON_VALUE)
	public User userban(@RequestBody User user) {
		visitService.updateBan(user);
		return user;
	}
}
