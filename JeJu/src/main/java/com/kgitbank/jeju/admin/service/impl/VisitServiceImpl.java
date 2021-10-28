package com.kgitbank.jeju.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kgitbank.jeju.admin.dto.DailyVisit;
import com.kgitbank.jeju.admin.mapper.VisitMapper;
import com.kgitbank.jeju.admin.service.VisitService;

@Service
public class VisitServiceImpl implements VisitService{
	
	@Autowired
	VisitMapper visitMapper;
	@Override
	public void getDashboardInfo(Model model) {
		List<DailyVisit> dailyVisit = visitMapper.getDailyVisit();
		int todayCount = visitMapper.getTodayVisitCount();
		model.addAttribute("todayCount", todayCount);
		model.addAttribute("dailyVisit", dailyVisit);
		
	}
}
