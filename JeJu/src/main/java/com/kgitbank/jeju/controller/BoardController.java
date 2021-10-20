package com.kgitbank.jeju.controller;


import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kgitbank.jeju.dto.Locations;
import com.kgitbank.jeju.dto.TouristSpot;
import com.kgitbank.jeju.mapper.LocationMapper;
import com.kgitbank.jeju.mapper.TouristSpotMapper;

import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;

@Log4j
@Slf4j
@RequestMapping("/")
@Controller
public class BoardController {
	
	@Autowired
	TouristSpotMapper touristSpotMapper;
	
	@Autowired
	LocationMapper locationMapper; 
	
	// list
	@RequestMapping(value="/listTourist", method= RequestMethod.GET)
	public ModelAndView listTourist() throws Exception {
		List<TouristSpot> list = touristSpotMapper.listTourist();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/list");
		mav.addObject("list",list);
		
		return mav;
	}
	
	// 2. insert form
	@ RequestMapping(value="/addTourist", method = RequestMethod.GET)
	public String addTourist(Model model) throws IllegalStateException, IOException {
		List<Locations> list = locationMapper.getList();
		log.info(list);
		model.addAttribute("locations", locationMapper.getList());
		return "board/form";
	}
	

	// 2. insert commit
	@RequestMapping(value="/addTourist/success", method=RequestMethod.POST, headers = ("content-type=multipart/*"))
	public String addTourist(@RequestParam("imageFile") MultipartFile multi, 
			@ModelAttribute("touristSpot") TouristSpot touristSpot,
			Model model) throws Exception{
		
		model.addAttribute("locations",locationMapper.getList());
		try {
			String uploadPath = "d:\\";
			String originFileName = multi.getOriginalFilename();
			
		if (!multi.getOriginalFilename().isEmpty()) {
		    File file =new File(uploadPath, multi.getOriginalFilename());
		    multi.transferTo(file);
		    
		    touristSpot.setImage(uploadPath + multi.getOriginalFilename());
		    model.addAttribute("fileName", multi.getOriginalFilename());
		    model.addAttribute(file.getAbsolutePath());
		    
		    return "redirect:listTourist";
		   }
		
		}catch(Exception e) {
			log.info("error : "+e);
		}
		
		touristSpotMapper.addTourist(touristSpot);	
		return "redirect:listTourist";
	}
	
	// detail and click count
	@RequestMapping(value="/listById", method=RequestMethod.GET)
	public ModelAndView listById (@RequestParam int tourist_spot_id, HttpSession session) throws Exception{
		touristSpotMapper.addPositive(tourist_spot_id, session);
		ModelAndView mav = new ModelAndView();
		// 자세히 보기 페이지
		mav.setViewName("board/view");
		mav.addObject("touristSpot",touristSpotMapper.listById(tourist_spot_id));
		log.info(mav+"ehlfk");
		return mav;
	}
	
	
	
}
