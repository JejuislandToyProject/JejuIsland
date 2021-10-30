package com.kgitbank.jeju.mapper;

import java.util.List;

import com.kgitbank.jeju.dto.MyCourse;

public interface MyCourseXMLMapper {
	public List<MyCourse> getListById(String id);
	public void addCourse(MyCourse mycourse);
	

}