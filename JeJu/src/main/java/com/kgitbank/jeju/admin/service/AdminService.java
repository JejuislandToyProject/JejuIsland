package com.kgitbank.jeju.admin.service;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.kgitbank.jeju.admin.dto.DailyVisit;
import com.kgitbank.jeju.admin.dto.Main;
import com.kgitbank.jeju.dto.User;

public interface AdminService {
	public void setAdminSession(HttpSession session);
	public void getDashboardInfo(Model model);
	public List<DailyVisit> getChartData();
	public List<User> getUserData();
	public void getMainInfo(Model model);
	public void updateBan(User user);
	public void uploadMainInfo(MultipartFile multi, Main main, HttpServletRequest request);
}
