package com.kgitbank.jeju.mapper;

import java.util.List;

import com.kgitbank.jeju.dto.matzipDto;



public interface matzipXMLMapper {
	
	public List<matzipDto> getList();
	
	public matzipDto getMatzip(String title);

}
