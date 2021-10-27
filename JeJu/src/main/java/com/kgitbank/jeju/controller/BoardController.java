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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.kgitbank.jeju.dto.Locations;
import com.kgitbank.jeju.dto.TouristSpot;
import com.kgitbank.jeju.mapper.FamousRestaurantMapper;
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
	
	@Autowired
	FamousRestaurantMapper restaurantMapper;
	
	@Inject
	BoardService boardService;
	
	
	/* / list
	@RequestMapping(value="/listTourist", method= RequestMethod.GET)
	public ModelAndView listTourist(HttpSession session) throws Exception {
		String id = (String)session.getAttribute("id");
		
		log.info(id);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/touristBoard");
		mav.addObject("tourist_spot",touristSpotMapper.listTourist());
		mav.addObject("locations",locationMapper.ListLocations());
		return mav;
	}*/
	
	// 2. insert form
	@ RequestMapping(value="/addTourist", method = RequestMethod.GET)
	public String addTourist(Model model, HttpSession session) throws IllegalStateException, IOException {
		List<Locations> list = locationMapper.ListLocations();		
		model.addAttribute("locations", locationMapper.ListLocations());
		return "board/form";
	}
	

	// 2. insert commit
	@RequestMapping(value="/addTourist/success", method=RequestMethod.POST, headers = ("content-type=multipart/*"))
	public String addTourist(@RequestParam("imageFile") MultipartFile multi, 
			@ModelAttribute("touristSpot") TouristSpot touristSpot,
			Model model, HttpSession session,HttpServletRequest request) throws Exception{
		
		
		
		model.addAttribute("locations",locationMapper.ListLocations());
		model.addAttribute("user_id", touristSpot.getUser_id());
		
		
		
		try {
			String root_path = request.getSession().getServletContext().getRealPath("/"); 
			String attach_path = "resources/img/";
		if (!multi.getOriginalFilename().isEmpty()) {
		    File file =new File(root_path+attach_path, multi.getOriginalFilename());
		    multi.transferTo(file);
		    
		    touristSpot.setImage(root_path+attach_path + multi.getOriginalFilename());
		    
		   }
		
		}catch(Exception e) {
			log.info("error : "+e);
		}
		log.info(touristSpot);
		touristSpotMapper.addTourist(touristSpot);	
		return "redirect:/listTourist";
	}
	
	// detail and click count
	@RequestMapping(value="/listById", method= RequestMethod.GET)
	public ModelAndView listById (@RequestParam("tourist_spot_id") int tourist_spot_id, 
				HttpSession session) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/view");
		mav.addObject("tourist_spot_id",tourist_spot_id);
		mav.addObject("tourist_spot",touristSpotMapper.listView(tourist_spot_id));
		
		
		log.info(mav);
		return mav;
	}
	
	// polygon -> board
	@GetMapping("/pathRestaurant/{title}")
	public String getRestaurantBoard(@PathVariable("title") String title, Model model) {
		log.info("도착" + restaurantMapper.getAreaRestaurant(title));
		
		return null;
	}
	
	
	
}
