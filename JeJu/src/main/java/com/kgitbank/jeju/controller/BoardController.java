package com.kgitbank.jeju.controller;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kgitbank.jeju.dto.FamousRestaurant;
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
		return "board/touristForm";
	}
	
	@ RequestMapping(value="/addRestList", method = RequestMethod.GET)
	public String addRestList(Model model, HttpSession session) throws IllegalStateException, IOException {
		List<Locations> list = locationMapper.ListLocations();		
		model.addAttribute("locations", locationMapper.ListLocations());
		return "board/restaurantForm";
	}
	

	// 2. insert commit
	
	@RequestMapping(value="/addTourist/success", method=RequestMethod.POST, consumes = { "multipart/form-data" })
	public String addTourist(MultipartHttpServletRequest multipartRequest,@ModelAttribute("touristSpot") TouristSpot touristSpot,
													Model model, HttpSession session,HttpServletRequest request) throws Exception{
		model.addAttribute("locations",locationMapper.ListLocations());
		model.addAttribute("user_id", touristSpot.getUser_id());
		
		
		MultipartFile file = multipartRequest.getFile("imageFile");
		
		// 경로 값 2개 root_path, attach_path
		String rearPath = request.getSession().getServletContext().getRealPath("/resources/img/famous_restraurant/"); 	
		try (
                FileOutputStream fos = new FileOutputStream(rearPath + file.getOriginalFilename());
                InputStream is = file.getInputStream();
			){
			int readCount = 0;
            byte[] buffer = new byte[1024];
            
            while ((readCount = is.read(buffer)) != -1) {
                fos.write(buffer, 0, readCount);
            }
		}catch(Exception e) {
			log.info("error : "+e);
		}
		touristSpot.setUser_id(new String (request.getParameter("user_id").getBytes("8859_1"), "UTF-8")); 
		touristSpot.setTitle(new String (request.getParameter("title").getBytes("8859_1"), "UTF-8"));
		touristSpot.setName(new String (request.getParameter("name").getBytes("8859_1"), "UTF-8")); 
		touristSpot.setLocation(new String (request.getParameter("location_path").getBytes("8859_1"), "UTF-8"));
		touristSpot.setHashtag(new String (request.getParameter("hashtag").getBytes("8859_1"), "UTF-8"));
		touristSpot.setDescription(new String (request.getParameter("description").getBytes("8859_1"), "UTF-8"));
		touristSpot.setImage("../resources/img/spot/"+file.getOriginalFilename());
		touristSpot.setLatitude(Double.parseDouble(new String (request.getParameter("getlatitude").getBytes("8859_1"), "UTF-8")));
		touristSpot.setLongitude(Double.parseDouble(new String (request.getParameter("getlongitude").getBytes("8859_1"), "UTF-8")));
		touristSpotMapper.addTourist(touristSpot);
		return "redirect:/board/tourist";
	}
	
	@RequestMapping(value="/addRestaurant/success", method=RequestMethod.POST, consumes = { "multipart/form-data" })
	public String addRestList(MultipartHttpServletRequest multipartRequest,@ModelAttribute("touristSpot") FamousRestaurant famousRestaurant,
													Model model, HttpSession session,HttpServletRequest request) throws Exception{
		model.addAttribute("locations",locationMapper.ListLocations());
		model.addAttribute("user_id", famousRestaurant.getUser_id());
	
		MultipartFile file = multipartRequest.getFile("imageFile");

		String rearPath = request.getSession().getServletContext().getRealPath("/resources/img/spot/"); 
		try (
                FileOutputStream fos = new FileOutputStream(rearPath + file.getOriginalFilename());
                InputStream is = file.getInputStream();
			){
			int readCount = 0;
            byte[] buffer = new byte[1024];
            
            while ((readCount = is.read(buffer)) != -1) {              
                fos.write(buffer, 0, readCount);
            }
		}catch(Exception e) {
			log.info("error : "+e);
		}			
		famousRestaurant.setUser_id(new String (request.getParameter("user_id").getBytes("8859_1"), "UTF-8")); 
		famousRestaurant.setTitle(new String (request.getParameter("title").getBytes("8859_1"), "UTF-8"));
		famousRestaurant.setName(new String (request.getParameter("name").getBytes("8859_1"), "UTF-8"));
		famousRestaurant.setLocation(new String (request.getParameter("location_path").getBytes("8859_1"), "UTF-8"));
		famousRestaurant.setHashtag(new String (request.getParameter("hashtag").getBytes("8859_1"), "UTF-8"));
		famousRestaurant.setDescription(new String (request.getParameter("description").getBytes("8859_1"), "UTF-8"));
		famousRestaurant.setImage("../resources/img/famous_restraurant/"+file.getOriginalFilename());
		famousRestaurant.setLatitude(Double.parseDouble(new String (request.getParameter("getlatitude").getBytes("8859_1"), "UTF-8")));
		famousRestaurant.setLongitude(Double.parseDouble(new String (request.getParameter("getlongitude").getBytes("8859_1"), "UTF-8")));
		restaurantMapper.addRestaurant(famousRestaurant);
		return "redirect:/board/restaurant";
	}
	
	// detail and click count
	@RequestMapping(value="board/listById", method= RequestMethod.GET)
	public ModelAndView listById (@RequestParam("tourist_spot_id") int tourist_spot_id, 
				HttpSession session) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/touristView");
		mav.addObject("tourist_spot_id",tourist_spot_id);
		mav.addObject("tourist_spot",touristSpotMapper.listView(tourist_spot_id));
		
		
		log.info(mav);
		return mav;
	}
	
	// polygon -> board 검색바 안으로 넘어갈 값.
	@GetMapping("/pathRestaurant/{title}")
	public String getRestaurantBoard(@PathVariable("title") String title, Model model) {
		model.addAttribute("polygonSearch", title);
		
		return "board/restaurantBoard";
	}
		
	
}
