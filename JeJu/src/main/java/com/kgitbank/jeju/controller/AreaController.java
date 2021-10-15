package com.kgitbank.jeju.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.kgitbank.jeju.dto.Area;
import com.kgitbank.jeju.mapper.AreaXMLMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/")
@RestController
public class AreaController {

	@Autowired
	AreaXMLMapper areaMapper;


	@GetMapping(value ="/getArea/{title}", produces ="application/json; charset=UTF-8") 
	public Area getIntroduce(@PathVariable("title") String title) { 
		log.info("Rest Areas : "+title); 
		log.info(areaMapper.getIntroduce(title).toString()); 
		
		return areaMapper.getIntroduce(title); 
	}
	
}
