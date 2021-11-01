package com.kgitbank.jeju.mapper;

import java.util.List;

import com.kgitbank.jeju.dto.MyCourse;

public interface MyCourseMapper {
	public List<MyCourse> getListById(String id);
	public void addDTOCourse(MyCourse mycourse);
	

}