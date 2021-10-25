package com.kgitbank.jeju.admin.mapper;

import java.util.List;

import com.kgitbank.jeju.admin.dto.Admin;

public interface AdminMapper {
	public List<Admin> getList();
	public Admin getAdmin(String id);

}
