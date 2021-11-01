package com.kgitbank.jeju.mapper;

import java.util.List;

import com.kgitbank.jeju.dto.CourseDetail;

public interface CourseDetailMapper {
	public List<CourseDetail> getListByCourseId(int id);
	public void insertDTOCourse(CourseDetail mycourse);
}
