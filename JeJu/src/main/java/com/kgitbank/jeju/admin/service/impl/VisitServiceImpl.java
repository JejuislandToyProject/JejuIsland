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
		int todayCount = visitMapper.getTodayVisitCount();
		int totalCount = visitMapper.getTotalVisitCount();
		model.addAttribute("todayCount", todayCount);
		model.addAttribute("totalCount", totalCount);
		
	}
	
	@Override
	public List<DailyVisit> getDailyVisit() {
		List<DailyVisit> dailyVisit = visitMapper.getDailyVisit();
		return dailyVisit;
	}
}
