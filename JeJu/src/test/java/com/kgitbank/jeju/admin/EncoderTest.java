package com.kgitbank.jeju.admin;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kgitbank.jeju.dto.ConfigTest;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class EncoderTest {

	@Autowired
	PasswordEncoder passwordEncoder;
	
	@Test
	public void passwordEncode() {
	      // given
	      String rawPassword = "1234";

	      // when
	      String encodedPassword = passwordEncoder.encode(rawPassword);
	      log.info(encodedPassword);

	      // then
	      assertNotEquals(rawPassword, encodedPassword);
	      assertTrue(passwordEncoder.matches(rawPassword, encodedPassword));
	   } 

}
