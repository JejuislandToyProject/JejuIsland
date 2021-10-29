package com.kgitbank.jeju.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kgitbank.jeju.dto.CourseDetail;
import com.kgitbank.jeju.dto.MyCourse;
import com.kgitbank.jeju.mapper.CourseDetailXMLMapper;
import com.kgitbank.jeju.mapper.MyCourseXMLMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/travelCourse")
@Controller
public class courseContoller {
	
	
	@Autowired
	MyCourseXMLMapper myCourseMapper;
	
	@Autowired
	CourseDetailXMLMapper courseDetailMapper;
	
	@GetMapping("/course")
	public void getGrid() {
		
	}
	
	// 여기서 데이터베이스에 마이페이지에서 사용할 여행경로를 저장함.
	@PostMapping("/course/save")
	public String getTravelCourse(HttpServletRequest req, HttpSession session) {
		
		if(session.getAttribute("id") == null) {
			return "redirect:/login/login";
		}
		String user_id = session.getAttribute("id").toString();
		 MyCourse course = new MyCourse(); 
		 course.setUser_name(user_id);
		 myCourseMapper.addCourse(course);
		 	
		  
		 
		String[] images = req.getParameter("imagePath").split(",");
		String[] names = req.getParameter("namePath").split(",");
		
		for(int i = 0; i < images.length; ++i) {
			CourseDetail detail = new CourseDetail(); 
			 detail.setSeqs(i+1);
			 detail.setImage(images[i]);
			 detail.setTitle(names[i]);
			 courseDetailMapper.insertCourse(detail);
		}
		return "./mypage/mypage";
	}
}
