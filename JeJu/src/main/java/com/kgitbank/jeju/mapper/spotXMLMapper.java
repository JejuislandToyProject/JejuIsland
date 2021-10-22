package com.kgitbank.jeju.mapper;

import java.util.List;

import com.kgitbank.jeju.dto.spotDto;

public interface spotXMLMapper {

	
	public List<spotDto> getList();
	
	public spotDto getSpot(String title);
}
