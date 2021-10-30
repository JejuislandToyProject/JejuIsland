package com.kgitbank.jeju.admin.service.impl;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.kgitbank.jeju.admin.dto.DailyVisit;
import com.kgitbank.jeju.admin.dto.Main;
import com.kgitbank.jeju.admin.mapper.MainMapper;
import com.kgitbank.jeju.admin.mapper.VisitMapper;
import com.kgitbank.jeju.admin.service.AdminService;
import com.kgitbank.jeju.dto.User;
import com.kgitbank.jeju.mapper.UserMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	VisitMapper visitMapper;
	@Autowired
	UserMapper userMapper;
	@Autowired
	MainMapper mainMapper;
	
	
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
	
	@Override
	public void updateBan(User user) {
		userMapper.updateBan(user);
	}
	@Override
	public void getMainInfo(Model model) {
		model.addAttribute("main", mainMapper.getList().get(0));
	}
	@Override
	public void uploadMainInfo(MultipartFile multi, Main main, String prevImage, HttpServletRequest request) {
		String fileName = multi.getOriginalFilename();

		try {
			
			if (!multi.getOriginalFilename().isEmpty()) {
				String root_path = request.getSession().getServletContext().getRealPath("/resources/img");  
				root_path += File.separator + fileName;
				File file =new File(root_path);
			    multi.transferTo(file);
			    log.info(file.getAbsolutePath());
			} else {
				String[] strArray = prevImage.split("/");
				int endIndex = strArray.length-1;
				fileName=strArray[endIndex];
				
			}
			
		    Main updateMain = new Main(main.getInfo_id(),
		    							"./resources/img/"+fileName,
		    							main.getTitle(), 
		    							main.getSub_title());
		    mainMapper.updateMainInfo(updateMain);
		}catch(Exception e) {
			log.info("error : "+e);
		}
		
	}
}
