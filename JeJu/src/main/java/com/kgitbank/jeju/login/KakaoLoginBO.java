package com.kgitbank.jeju.login;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.CharsetEncoder;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

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

		/* 카카오 아이디로 인증 URL 생성 Method */
		public String getAuthorizationUrl(HttpSession session, String serverUrl) {
			String state = generateRandomString();
			setSession(session, state);
			
			OAuth20Service oauthService = new ServiceBuilder(KAKAO_CLIENT_ID)
					//.apiSecret(KAKAO_CLIENT_SECRET)
					.callback(serverUrl + KAKAO_REDIRECT_URI)
					.build(KakaoLoginApi.instance());
			return oauthService.getAuthorizationUrl(state);
		}

		/* 카카오아이디로 Callback 처리 및 AccessToken 획득 Method */
		public String getAccessToken(HttpServletRequest request, String autorizeCode) throws UnsupportedEncodingException {
		    String clientId = KAKAO_CLIENT_ID;
			String code = autorizeCode;
		    String state = request.getParameter("state");
		    String redirectURI = URLEncoder.encode("http://localhost:8080/jeju/kakaoAuth", "UTF-8");
		    String apiURL;
		    apiURL = "https://kauth.kakao.com/oauth/token?grant_type=authorization_code&";
		    apiURL += "client_id=" + clientId;
		    //apiURL += "&client_secret=" + clientSecret;
		    apiURL += "&redirect_uri=" + redirectURI;
		    apiURL += "&code=" + code;
		    apiURL += "&state=" + state;
		    
		    log.info("apiURL="+apiURL);
		    
		    
		    String access_token = "";
		    String refresh_token = "";
		    
		    try {
		      URL url = new URL(apiURL);
		      HttpURLConnection con = (HttpURLConnection)url.openConnection();
		      con.setRequestMethod("POST");
		      //con.setDoInput(true);
		      
		      int responseCode = con.getResponseCode();
		      log.info("responseCode="+responseCode);
		      
		      
		      BufferedReader br;
		      if(responseCode==200) { // 정상 호출
		        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		      } else {  // 에러 발생
		        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
		      }
		      
		      String inputLine;
		      StringBuffer res = new StringBuffer();
		      
		      while ((inputLine = br.readLine()) != null) {
		        res.append(inputLine);
		      }
		      
		      if(responseCode==200) {
				JsonElement element = JsonParser.parseString(res.toString());
				access_token = element.getAsJsonObject().get("access_token").getAsString();
				refresh_token = element.getAsJsonObject().get("refresh_token").getAsString();
		      }
		      br.close();
		      
		    } catch (Exception e) {
		    	log.error(e);
		    }
		    
		    return access_token;
		}
		
		public String getUserProfile(String oauthToken, String serverUrl) throws Exception {
			OAuth20Service oauthService = new ServiceBuilder(KAKAO_CLIENT_ID)
					//.apiSecret(KAKAO_CLIENT_SECRET)
					.callback(serverUrl + KAKAO_REDIRECT_URI)
					.build(KakaoLoginApi.instance());
			OAuthRequest request = new OAuthRequest(Verb.GET, PROFILE_API_URL);
			oauthService.signRequest(oauthToken, request);
			Response response = oauthService.execute(request);
			return response.getBody();
		}
		
		
/*//Access Token error (session state 값 서로 같지 않음 + code 값이 변환되서 오는 듯?)
		public OAuth2AccessToken getAccessToken(HttpSession session, String state, String code, String serverUrl) throws Exception {
			String sessionState = getSession(session);
			
			if (StringUtils.pathEquals(sessionState, state)) {
				OAuth20Service oauthService = new ServiceBuilder(KAKAO_CLIENT_ID)
						//.apiSecret(KAKAO_CLIENT_SECRET)
						.callback(serverUrl + KAKAO_REDIRECT_URI)
						.build(KakaoLoginApi.instance());
				System.out.println("url:: "+oauthService.getAuthorizationUrl());
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
*/
		
		/* 세션 유효성 검증을 위한 난수 생성기 */
		private String generateRandomString() {
			return UUID.randomUUID().toString();
		}

		/* http session에 데이터 저장 */
		private void setSession(HttpSession session, String state) {
			session.setAttribute(SESSION_STATE, state);
		}

		/* http session에서 데이터 가져오기 */
		private String getSession(HttpSession session) {
			return (String) session.getAttribute(SESSION_STATE);
		}
}
