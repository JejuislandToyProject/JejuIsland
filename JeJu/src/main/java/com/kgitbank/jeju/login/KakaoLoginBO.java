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

import lombok.extern.log4j.Log4j;

@Log4j
public class KakaoLoginBO {
		@Value("#{property['kakaoClientId']}")
		private String KAKAO_CLIENT_ID;
		
		//@Value("#{property['kakaoClientSecret']}")
		//private String KAKAO_CLIENT_SECRET;
		
		private final static String KAKAO_REDIRECT_URI = "/jeju/kakaoAuth";
		private final static String SESSION_STATE = "kakao_oauth_state";
		private final static String PROFILE_API_URL = "https://kapi.kakao.com/v2/user/me";

		/* īī�� ���̵�� ���� URL ���� Method */
		public String getAuthorizationUrl(HttpSession session, String serverUrl) {
			String state = generateRandomString();
			setSession(session, state);
			
			OAuth20Service oauthService = new ServiceBuilder(KAKAO_CLIENT_ID)
					//.apiSecret(KAKAO_CLIENT_SECRET)
					.callback(serverUrl + KAKAO_REDIRECT_URI)
					.build(KakaoLoginApi.instance());
			return oauthService.getAuthorizationUrl(state);
		}

		/* īī�����̵�� Callback ó�� �� AccessToken ȹ�� Method */
		public OAuth2AccessToken getAccessToken(HttpSession session, String state, String code, String serverUrl) throws Exception {
			String sessionState = getSession(session);
			if (StringUtils.pathEquals(sessionState, state)) {
				OAuth20Service oauthService = new ServiceBuilder(KAKAO_CLIENT_ID)
						//.apiSecret(KAKAO_CLIENT_SECRET)
						.callback(serverUrl + KAKAO_REDIRECT_URI)
						.build(KakaoLoginApi.instance());
				System.out.println(KAKAO_CLIENT_ID);
				OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
				return accessToken;
			}
			return null;
		}

		public String getUserProfile(OAuth2AccessToken oauthToken, String serverUrl) throws Exception {
			OAuth20Service oauthService = new ServiceBuilder(KAKAO_CLIENT_ID)
					//.apiSecret(KAKAO_CLIENT_SECRET)
					.callback(serverUrl + KAKAO_REDIRECT_URI)
					.build(KakaoLoginApi.instance());
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
