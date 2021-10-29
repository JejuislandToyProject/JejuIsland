package com.kgitbank.jeju.admin.service;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.kgitbank.jeju.admin.dto.DailyVisit;
import com.kgitbank.jeju.dto.User;

public interface AdminService {
	public void setAdminSession(HttpSession session);
	public void getDashboardInfo(Model model);
	public List<DailyVisit> getChartData();
	public List<User> getUserData();
	public void updateBan(User user);
}
