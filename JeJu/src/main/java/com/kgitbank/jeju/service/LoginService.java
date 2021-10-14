package com.kgitbank.jeju.service;

import javax.servlet.http.HttpSession;

import com.github.scribejava.core.model.OAuth2AccessToken;

public interface LoginService {
	public void naverLogin(HttpSession session, OAuth2AccessToken oauthToken, String serverUrl) throws Exception;
	public void kakaoLogin(HttpSession session, String oauthToken, String serverUrl) throws Exception;
}
