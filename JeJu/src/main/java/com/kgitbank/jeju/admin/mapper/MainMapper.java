package com.kgitbank.jeju.admin.mapper;

import java.util.List;

import com.kgitbank.jeju.admin.dto.Main;

public interface MainMapper {
	public List<Main> getList();
	public int updateMainInfo(Main main);
}
