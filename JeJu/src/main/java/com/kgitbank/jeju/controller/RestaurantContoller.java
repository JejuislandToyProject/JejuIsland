package com.kgitbank.jeju.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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

import com.kgitbank.jeju.dto.FamousRestaurant;
import com.kgitbank.jeju.dto.Locations;

import com.kgitbank.jeju.mapper.FamousRestaurantMapper;
import com.kgitbank.jeju.mapper.LocationMapper;


import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;

@Log4j
@Slf4j
@Controller
public class RestaurantContoller {
	
	@Autowired
	FamousRestaurantMapper famousRestaurantMapper;
	
	@Autowired
	LocationMapper locationMapper; 
	
	@RequestMapping(value = "/listRestaurant", method = RequestMethod.GET)
	public String TourList(HttpSession session) throws Exception {
		String id = (String)session.getAttribute("id");
		
		log.info("id: "+id);
		return "board/restaurantBoard";
	}

	
	// 2. insert form
		@ RequestMapping(value="/addRestaurant", method = RequestMethod.GET)
		public String addRestaurant(Model model, HttpSession session) throws IllegalStateException, IOException {
			List<Locations> locationList = locationMapper.ListLocations();
			session.getAttribute("id");
			log.info(session.getAttribute("id")+" °ª");
			
			model.addAttribute("locations", locationMapper.ListLocations());
			return "board/restaurantForm";
		}
		

		// 2. insert commit
		@RequestMapping(value="/addRestaurant/success", method=RequestMethod.POST, headers = ("content-type=multipart/*"))
		public String addTourist(@RequestParam("imageFile") MultipartFile multi, 
				@ModelAttribute("famous_restraurant") FamousRestaurant famousRestaurant,
				Model model, HttpSession session,HttpServletRequest request) throws Exception{
			
			session.getAttribute("id");
			
			model.addAttribute("locations",locationMapper.ListLocations());
			model.addAttribute("user_id", famousRestaurant.getUser_id());
			
			
			
			try {
				String root_path = request.getSession().getServletContext().getRealPath("/"); 
				String attach_path = "resources/img/";
			if (!multi.getOriginalFilename().isEmpty()) {
			    File file =new File(root_path+attach_path, multi.getOriginalFilename());
			    multi.transferTo(file);
			    
			    famousRestaurant.setImage(root_path+attach_path + multi.getOriginalFilename());
			    
			   }
			
			}catch(Exception e) {
				log.info("error : "+e);
			}
			log.info(famousRestaurant);
			famousRestaurantMapper.addRestaurant(famousRestaurant);	
			return "redirect:/listTourist";
		}
		
		// detail and click count
		@RequestMapping(value="/listFamous", method= RequestMethod.GET)
		public ModelAndView listById (@RequestParam("famous_restaurant_id") int famous_restaurant_id, 
					HttpSession session) throws Exception{
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("board/restaurantView");
			mav.addObject("famous_restaurant_id",famous_restaurant_id);
			mav.addObject("famous_restraurant",famousRestaurantMapper.listView(famous_restaurant_id));
			
			
			log.info(mav);
			return mav;
		}
}
