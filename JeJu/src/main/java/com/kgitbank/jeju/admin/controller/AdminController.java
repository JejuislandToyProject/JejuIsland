package com.kgitbank.jeju.admin.controller;


import java.io.File;

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

import com.kgitbank.jeju.admin.dto.Main;
import com.kgitbank.jeju.admin.service.AdminService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	
	@RequestMapping(value="/admin/login", method= {RequestMethod.GET, RequestMethod.POST})
	public String adminLogin(HttpSession session) {
		adminService.setAdminSession(session);
		return "/admin/adminLogin";
		
	}
	@RequestMapping(value="/admin/main", method= {RequestMethod.GET, RequestMethod.POST})
	public String admin(Model model) {
		adminService.getDashboardInfo(model);
		return "/admin/admin";
	}
	 
	@RequestMapping(value="/admin/user", method= {RequestMethod.GET, RequestMethod.POST})
	public String user() {
		return "/admin/utilities-user-ban";
	}
	
	@RequestMapping(value="/admin/site", method= {RequestMethod.GET, RequestMethod.POST})
	public String test(Model model) {
		adminService.getMainInfo(model);
		return "/admin/utilities-site";
	}
	
	@RequestMapping(value="/admin/site/success", method=RequestMethod.POST, headers = ("content-type=multipart/*"))
	public String addTourist(@RequestParam("imageFile") MultipartFile multi, 
			@ModelAttribute("main") Main main, @ModelAttribute("prev-image") String prevImage, HttpServletRequest request) throws Exception{	
		adminService.uploadMainInfo(multi, main, prevImage, request);
		return "redirect:/admin/site";
	}
	
}
