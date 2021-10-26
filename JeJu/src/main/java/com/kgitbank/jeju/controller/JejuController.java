package com.kgitbank.jeju.controller;

import java.text.ParseException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kgitbank.jeju.dto.User;
import com.kgitbank.jeju.mapper.FamousRestaurantMapper;
import com.kgitbank.jeju.mapper.UserMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class JejuController {
	@Autowired
	UserMapper userMapper;
	
	@Autowired
	FamousRestaurantMapper restaurantMapper;
	
	@RequestMapping(value="/", method = {RequestMethod.GET, RequestMethod.POST})
	public String index() {
		log.info("show main");
		return "/index";
	}
	
	@GetMapping("/login/callback")
	public String callback() {
		return "redirect:/";
	}
	
	@GetMapping("/mypage")
	public String mypage(HttpSession session, Model model) throws ParseException {
		String id = (String) session.getAttribute("id");
		if(id == null) {
			return "redirect:/login";
		}
		
		model.addAttribute("user", userMapper.listUser(id));
		
		return "/mypage/mypage";
	}

	@RequestMapping(value="/admin/login", method= {RequestMethod.GET, RequestMethod.POST})
	public String admin() {
		return "/admin/adminLogin";
		
	}
}
