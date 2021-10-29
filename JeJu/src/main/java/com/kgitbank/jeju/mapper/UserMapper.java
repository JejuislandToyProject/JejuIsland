package com.kgitbank.jeju.mapper;

import java.util.List;

import com.kgitbank.jeju.dto.User;

public interface UserMapper {
	public List<User> listUsers();
	public int addUser(User user);
	public User listUser(String id);
	public int updateBan(int banned);
}
