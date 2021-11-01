package com.kgitbank.jeju.admin.mapper;

import java.util.List;

import com.kgitbank.jeju.admin.dto.DailyVisit;
import com.kgitbank.jeju.admin.dto.Visit;

public interface VisitMapper {
	public List<Visit> getList();
	public Integer getTodayVisitCount();
	public Integer getTotalVisitCount();
	public List<DailyVisit> getDailyVisit();
	public int addVisit();
}
