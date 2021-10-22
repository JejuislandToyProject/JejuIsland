package com.kgitbank.jeju.controller;


import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import com.kgitbank.jeju.service.BoardService;
import com.kgitbank.jeju.service.impl.BoardServiceImpl;

import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;

@Log4j
@Slf4j
@Controller
public class BoardController {
	
	@Autowired
	TouristSpotMapper touristSpotMapper;
	
	@Autowired
	LocationMapper locationMapper; 
	
	@Inject
	BoardService boardService;
	
	// list
	/*@RequestMapping(value="/listTourist", method= RequestMethod.GET)
	public ModelAndView listTourist() throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/touristBoard");
		mav.addObject("tourist_spot",touristSpotMapper.listTourist());
		mav.addObject("locations",locationMapper.getList());
		return mav;
	}
	*/
	// 2. insert form
	@ RequestMapping(value="/addTourist", method = RequestMethod.GET)
	public String addTourist(Model model, HttpSession session) throws IllegalStateException, IOException {
		List<Locations> list = locationMapper.getList();
		session.getAttribute("id");
		log.info(session.getAttribute("id")+" °ª");
		
		model.addAttribute("locations", locationMapper.getList());
		return "board/form";
	}
	

	// 2. insert commit
	@RequestMapping(value="/addTourist/success", method=RequestMethod.POST, headers = ("content-type=multipart/*"))
	public String addTourist(@RequestParam("imageFile") MultipartFile multi, 
			@ModelAttribute("touristSpot") TouristSpot touristSpot,
			Model model, HttpSession session) throws Exception{
		
		session.getAttribute("id");
		
		model.addAttribute("locations",locationMapper.getList());
		model.addAttribute("user_id", touristSpot.getUser_id());
		
		
		
		try {
			String uploadPath = "d:\\";
			
		if (!multi.getOriginalFilename().isEmpty()) {
		    File file =new File(uploadPath, multi.getOriginalFilename());
		    multi.transferTo(file);
		    
		    touristSpot.setImage(uploadPath + multi.getOriginalFilename());
		    
		   }
		
		}catch(Exception e) {
			log.info("error : "+e);
		}
		log.info(touristSpot);
		touristSpotMapper.addTourist(touristSpot);	
		return "redirect:/listTourist";
	}
	
	// detail and click count
	@RequestMapping(value="/listById", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listById (@RequestParam("tourist_spot_id") int tourist_spot_id, HttpSession session) throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/view");
		mav.addObject("tourist_spot",boardService.listById(tourist_spot_id));
		log.info(mav);
		return mav;
	}
	
	
	
}
