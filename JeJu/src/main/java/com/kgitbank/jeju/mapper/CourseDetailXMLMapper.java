package com.kgitbank.jeju.mapper;

import java.util.List;

import com.kgitbank.jeju.dto.CourseDetail;

public interface CourseDetailXMLMapper {
	public List<CourseDetail> getListByCourseId(int id);
	public void insertCourse(CourseDetail mycourse);
}
