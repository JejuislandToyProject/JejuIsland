package com.kgitbank.jeju.admin.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.kgitbank.jeju.admin.dto.Admin;
import com.kgitbank.jeju.admin.mapper.AdminMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service("adminLogin")
public class AdminLoginService implements UserDetailsService {
	@Autowired
	AdminMapper adminmapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.info("inner UserDetails");
		
		Admin adminDetail = adminmapper.getAdmin(username);
		
		return adminDetail;
	}
}
