package com.kgitbank.jeju.service.impl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kgitbank.jeju.admin.mapper.VisitMapper;
import com.kgitbank.jeju.service.SessionService;

@Service("sessionService")
public class SessionServiceImpl implements SessionService{
	@Autowired
	VisitMapper visitMapper;
	
	@Override
	public void addVisit(HttpSession session) {
		if(session.getAttribute("admin") != null) {
			return;
		}
		visitMapper.addVisit();
	}
}
