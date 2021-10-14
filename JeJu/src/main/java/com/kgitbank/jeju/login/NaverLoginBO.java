package com.kgitbank.jeju.login;

import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.StringUtils;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;


public class NaverLoginBO {
	// ���̹� �α��� ����
	
	@Value("#{property['naverClientId']}")
	private String NAVER_CLIENT_ID;
	
	@Value("#{property['naverClientSecret']}")
	private String NAVER_CLIENT_SECRET;
	
	private final static String NAVER_REDIRECT_URI = "/jeju/naverAuth";
	
	private final static String SESSION_STATE = "naver_oauth_state";
	private final static String PROFILE_API_URL = "https://openapi.naver.com/v1/nid/me";

	
	/* ���̹� ���̵�� ���� URL ���� Method */
	public String getAuthorizationUrl(HttpSession session, String serverUrl) {
		String state = generateRandomString();
		setSession(session, state);
		
		OAuth20Service oauthService = new ServiceBuilder(NAVER_CLIENT_ID)
				.apiSecret(NAVER_CLIENT_SECRET)
				.callback(serverUrl + NAVER_REDIRECT_URI)
				.build(NaverLoginApi.instance());
		return oauthService.getAuthorizationUrl(state);
	}

	/* ���̹����̵�� Callback ó�� �� AccessToken ȹ�� Method */
	public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state, String serverUrl) throws Exception {
		String sessionState = getSession(session);
		if (StringUtils.pathEquals(sessionState, state)) {
			OAuth20Service oauthService = new ServiceBuilder(NAVER_CLIENT_ID)
					.apiSecret(NAVER_CLIENT_SECRET)
					.callback(serverUrl + NAVER_REDIRECT_URI)
					.build(NaverLoginApi.instance());
			OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
			return accessToken;
		}
		return null;
	}

	public String getUserProfile(OAuth2AccessToken oauthToken, String serverUrl) throws Exception {
		OAuth20Service oauthService = new ServiceBuilder(NAVER_CLIENT_ID)
				.apiSecret(NAVER_CLIENT_SECRET)
				.callback(serverUrl + NAVER_REDIRECT_URI)
				.build(NaverLoginApi.instance());
		OAuthRequest request = new OAuthRequest(Verb.GET, PROFILE_API_URL);
		oauthService.signRequest(oauthToken, request);
		Response response = oauthService.execute(request);
		return response.getBody();
	}
	
	/* ���� ��ȿ�� ������ ���� ���� ������ */
	private String generateRandomString() {
		return UUID.randomUUID().toString();
	}

	/* http session�� ������ ���� */
	private void setSession(HttpSession session, String state) {
		session.setAttribute(SESSION_STATE, state);
	}

	/* http session���� ������ �������� */
	private String getSession(HttpSession session) {
		return (String) session.getAttribute(SESSION_STATE);
	}
}