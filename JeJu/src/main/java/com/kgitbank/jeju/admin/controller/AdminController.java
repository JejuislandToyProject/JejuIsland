package com.kgitbank.jeju.admin.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kgitbank.jeju.admin.service.VisitService;


@Controller
public class AdminController {
	
	@Autowired
	VisitService visitService;
	
	
	@RequestMapping(value="/admin/login", method= {RequestMethod.GET, RequestMethod.POST})
	public String adminLogin(HttpSession session) {
		visitService.setAdminSession(session);
		return "/admin/adminLogin";
		
	}
	@RequestMapping(value="/admin/main", method= {RequestMethod.GET, RequestMethod.POST})
	public String admin(Model model) {
		visitService.getDashboardInfo(model);
		return "/admin/admin";
	}
}
