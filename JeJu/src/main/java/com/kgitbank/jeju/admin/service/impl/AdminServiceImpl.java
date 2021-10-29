package com.kgitbank.jeju.admin.service.impl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kgitbank.jeju.admin.dto.DailyVisit;
import com.kgitbank.jeju.admin.mapper.VisitMapper;
import com.kgitbank.jeju.admin.service.AdminService;
import com.kgitbank.jeju.dto.User;
import com.kgitbank.jeju.mapper.UserMapper;

@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	VisitMapper visitMapper;
	@Autowired
	UserMapper userMapper;
	
	@Override
	public void setAdminSession(HttpSession session) {
		session.setAttribute("admin", session);
	}
	@Override
	public void getDashboardInfo(Model model) {
		int todayCount = visitMapper.getTodayVisitCount();
		int totalCount = visitMapper.getTotalVisitCount();
		model.addAttribute("todayCount", todayCount);
		model.addAttribute("totalCount", totalCount);
		
	}
	
	@Override
	public List<DailyVisit> getChartData() {
		List<DailyVisit> dailyVisit = visitMapper.getDailyVisit();
		return dailyVisit;
	}
	
	@Override
	public List<User> getUserData() {
		List<User> users = userMapper.listUsers();
		return users;
	}
}
