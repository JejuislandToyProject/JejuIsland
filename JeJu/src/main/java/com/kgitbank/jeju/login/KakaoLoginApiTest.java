package com.kgitbank.jeju.login;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;


public class KakaoLoginApiTest {
		@Value("#{property['kakaoClientId']}")
		private String KAKAO_CLIENT_ID; 
		
		private final static String KAKAO_REDIRECT_URI = "/jeju/kakaoAuth";
		
		private static class InstanceHolder {
			private static final KakaoLoginApiTest INSTANCE = new KakaoLoginApiTest();
		}
		public static KakaoLoginApiTest instance() {
			return InstanceHolder.INSTANCE;
		}
		
		public String getAuthorizationUrl(HttpSession session) { 
			String kakaoUrl = "https://kauth.kakao.com/oauth/authorize?" 
					+ "client_id=" + KAKAO_CLIENT_ID + "&redirect_uri=" 
					+ KAKAO_REDIRECT_URI + "&response_type=code"; 
			return kakaoUrl; 
		}
		
		public void getAccessToken(HttpServletRequest request, String autorizeCode) throws UnsupportedEncodingException {
		    String clientId = "3e000050bb39bc5eb056f8f5bb62c43f";
			String code = autorizeCode;
		    String state = request.getParameter("state");
		    String redirectURI = URLEncoder.encode("http://localhost:8080/jeju/kakaoAuth", "UTF-8");
		    String apiURL;
		    apiURL = "https://kauth.kakao.com/oauth/token?grant_type=authorization_code&";
		    apiURL += "client_id=" + clientId;
		    //apiURL += "&client_secret=" + clientSecret;
		    apiURL += "&redirect_uri=" + redirectURI;
		    apiURL += "&code=" + code;
		    //apiURL += "&state=" + state;
		    String access_token = "";
		    String refresh_token = "";
		    System.out.println("apiURL="+apiURL);
		    try {
		      URL url = new URL(apiURL);
		      HttpURLConnection con = (HttpURLConnection)url.openConnection();
		      con.setRequestMethod("POST");
		      //con.setDoInput(true);
		      System.out.println(con.getRequestMethod());
		      
		      int responseCode = con.getResponseCode();
		      BufferedReader br;
		      System.out.println("responseCode="+responseCode);
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
		      br.close();
		      if(responseCode==200) {
		        System.out.println(res.toString());
		      }
		    } catch (Exception e) {
		      System.out.println(e);
		    }
		}

}
