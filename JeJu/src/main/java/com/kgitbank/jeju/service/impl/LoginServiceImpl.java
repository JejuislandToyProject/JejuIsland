package com.kgitbank.jeju.service.impl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.kgitbank.jeju.dto.User;
import com.kgitbank.jeju.login.KakaoLoginBO;
import com.kgitbank.jeju.login.NaverLoginBO;
import com.kgitbank.jeju.mapper.UserMapper;
import com.kgitbank.jeju.service.LoginService;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class LoginServiceImpl implements LoginService{
	@Autowired
	private UserMapper usermapper;
	
	@Autowired
	private NaverLoginBO naverLoginBO;
	
	@Autowired
	private KakaoLoginBO kakaoLoginBO;
	
	@Override
	public void naverLogin(HttpSession session, OAuth2AccessToken oauthToken, String serverUrl) throws Exception {
		// 로그인 사용자 정보를 읽어온다
		String apiResult = naverLoginBO.getUserProfile(oauthToken, serverUrl);
		log.info("apiResult : " + apiResult);
		
		JsonElement element = JsonParser.parseString(apiResult);
		JsonObject object = element.getAsJsonObject();
		JsonObject response_obj = (JsonObject) object.get("response");
		
		String id = response_obj.get("id").getAsString();
		String nickname = response_obj.get("nickname").getAsString();
		
		log.info("naver ID : " + id);
		log.info("naver nickname : " + nickname);
		
		log.info(usermapper);
		User user = new User(id, nickname);
		
		if(usermapper.listUser(id) == null) {
			usermapper.addUser(user);
		}
		
		// 세션에 사용자 정보 등록
		session.setAttribute("id", id);

	}
	
	@Override
	public void kakaoLogin(HttpSession session, String oauthToken, String serverUrl) throws Exception {
		// 로그인 사용자 정보를 읽어온다
		String apiResult = kakaoLoginBO.getUserProfile(oauthToken, serverUrl);
		
		log.info("apiResult : "+apiResult);
		
		JsonElement element = JsonParser.parseString(apiResult);
		JsonObject object = element.getAsJsonObject();
		
		String id = object.get("id").getAsString();
		String nickname = object.get("properties")
								.getAsJsonObject()
								.get("nickname")
								.getAsString();
		log.info("kakao ID : " + id);
		log.info("kakao nickname : " + nickname);
		
		log.info(usermapper);
		User user = new User(id, nickname);
		if(usermapper.listUser(id) == null) {
			usermapper.addUser(user);
		}
		
		// 세션에 사용자 정보 등록
		session.setAttribute("id", id);

	}
}
