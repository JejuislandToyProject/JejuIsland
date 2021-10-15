package com.kgitbank.jeju.dto;

import static org.junit.Assert.assertNotNull;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ConfigTest {
	@Autowired
	SqlSessionFactory sqlsessionfactory;
	
	@Value("#{property['kakaoClientId']}")
	private String ClientID;
	
	@Value("#{property['kakaoClientSecret']}")
	private String ClientSeceret;
	
	
	@Test
	public void dbConnTest() {
		log.info(sqlsessionfactory);
		assertNotNull(sqlsessionfactory.openSession());
	}
	
	@Ignore
	@Test
	public void configIdTest() {
		log.info(ClientID);
		assertNotNull(ClientID);
	}
	@Ignore
	@Test
	public void configSecretTest() {
		log.info(ClientSeceret);
		assertNotNull(ClientSeceret);
	}
}
