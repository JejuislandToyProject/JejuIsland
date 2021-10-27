package com.kgitbank.jeju.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kgitbank.jeju.mapper.VisitMapper;
import com.kgitbank.jeju.service.SessionService;

@Service("sessionService")
public class SessionServiceImpl implements SessionService{
	@Autowired
	VisitMapper visitMapper;
	
	@Override
	public void addVisit() {
		visitMapper.addVisit();
	}
}
