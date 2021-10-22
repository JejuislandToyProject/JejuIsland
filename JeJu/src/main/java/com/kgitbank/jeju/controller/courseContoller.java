package com.kgitbank.jeju.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/travelCourse")
@Controller
public class courseContoller {
	
	@GetMapping("/course")
	public void getGrid() {
		
	}
}
