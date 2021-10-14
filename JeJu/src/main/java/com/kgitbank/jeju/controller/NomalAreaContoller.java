package com.kgitbank.jeju.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/area")
@Controller
public class NomalAreaContoller {
	@GetMapping("/area")
	public void getAreas() {
		log.info("아리아 노멀.");
	}
	
	@GetMapping("/nomal")
	public void getGrid() {
		
	}
}
