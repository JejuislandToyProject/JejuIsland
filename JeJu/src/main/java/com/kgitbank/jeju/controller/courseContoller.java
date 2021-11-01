package com.kgitbank.jeju.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kgitbank.jeju.common.LoginVerifier;
import com.kgitbank.jeju.dto.CourseDetail;
import com.kgitbank.jeju.dto.MyCourse;
import com.kgitbank.jeju.mapper.CourseDetailMapper;
import com.kgitbank.jeju.mapper.MyCourseMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/travelCourse")
@Controller
public class courseContoller {
	
	
	@Autowired
	MyCourseMapper myCourseMapper;
	
	@Autowired
	CourseDetailMapper courseDetailMapper;
	
	@GetMapping("/course")
	public void getGrid() {
		
	}
	
	@PostMapping("/course/save")
	public String getTravelCourse(HttpServletRequest req, HttpSession session) {

		if(!LoginVerifier.isLogin(session)) {
			return "redirect:/login/login";
		}
		String user_id = session.getAttribute("id").toString();
		MyCourse course = new MyCourse(); 
		course.setUser_id(user_id);
		myCourseMapper.addDTOCourse(course);
		 			  		 
		String[] images = req.getParameter("imagePath").split(",");
		String[] names = req.getParameter("namePath").split(",");
		
		for(int i = 0; i < images.length; ++i) {
			CourseDetail detail = new CourseDetail(); 
			 detail.setSeqs(i+1);
			 detail.setImage(images[i]);
			 detail.setTitle(names[i]);
			 courseDetailMapper.insertDTOCourse(detail);
		}
		return "redirect:/mypage";
	}
}
