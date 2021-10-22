package com.kgitbank.jeju.mapper;

import java.util.List;

import com.kgitbank.jeju.dto.SpotAndMatzipDto;

public interface SpotAndMatzipXMLMapper {
	
	public SpotAndMatzipDto getItem(String title);
	
	public List<SpotAndMatzipDto> getSearch(String title);
	
	
}
