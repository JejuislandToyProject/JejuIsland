package com.kgitbank.jeju.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.kgitbank.jeju.login.KakaoLoginBO;
import com.kgitbank.jeju.login.NaverLoginBO;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class LoginController {
		@Autowired
		NaverLoginBO naverLoginBO;
		
		@Autowired
		KakaoLoginBO kakaoLoginBO;
		
		// �α��� ȭ��
		@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
		public String login(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) {

			String serverUrl = request.getScheme()+"://"+request.getServerName();
			if(request.getServerPort() != 80) {
				serverUrl = serverUrl + ":" + request.getServerPort();
			}
			
			String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session, serverUrl);
			String kakaoAuthUrl = kakaoLoginBO.getAuthorizationUrl(session, serverUrl);
			
			
			model.addAttribute("kakaoAuthUrl", kakaoAuthUrl);
			model.addAttribute("naverAuthUrl", naverAuthUrl);
			log.info("naver URL"+naverAuthUrl);
			log.info("kakao URL"+kakaoAuthUrl);

			return "/login/login";
		}

		// ���̹� �α��� ������ callback
		@RequestMapping(value = "/naverAuth", method = { RequestMethod.GET, RequestMethod.POST })
		public String naverOauth2ClientCallback(HttpServletRequest request, HttpServletResponse response, Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws Exception {

			String serverUrl = request.getScheme()+"://"+request.getServerName();
			if(request.getServerPort() != 80) {
				serverUrl = serverUrl + ":" + request.getServerPort();
			}

			OAuth2AccessToken oauthToken;
			oauthToken = naverLoginBO.getAccessToken(session, code, state, serverUrl);
			if(oauthToken == null) {
				model.addAttribute("msg", "���̹� �α��� access ��ū �߱� ���� �Դϴ�.");
				model.addAttribute("url", "/");
				log.info("oauthToken null");
				return "/login/callback";
			}
			
			// �α��� ����� ������ �о�´�
			String apiResult = naverLoginBO.getUserProfile(oauthToken, serverUrl);
			
			
			JsonElement element = JsonParser.parseString(apiResult);
			JsonObject object = element.getAsJsonObject();
			JsonObject response_obj = (JsonObject) object.get("response");
			
			String id = response_obj.get("id").getAsString();
			
			// ���ǿ� ����� ���� ���
			session.setAttribute("islogin_r", "Y");
			session.setAttribute("id", id);
			
			return "redirect:/login/callback";
		}
		@RequestMapping(value = "/kakaoAuth", method = { RequestMethod.GET, RequestMethod.POST })
		public String kakaoOauth2ClientCallback(HttpServletRequest request, HttpServletResponse response, Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws Exception {

			
			String serverUrl = request.getScheme()+"://"+request.getServerName();
			if(request.getServerPort() != 80) {
				serverUrl = serverUrl + ":" + request.getServerPort();
			}

//			log.info("AuthCode:: "+code);
//			OAuth2AccessToken oauthToken;
//			oauthToken = kakaoLoginBO.getAccessToken(session, code, state, serverUrl);
			
			String oauthToken = kakaoLoginBO.getAccessToken(request, code);
			log.info(oauthToken);
			if(oauthToken == null) {
				model.addAttribute("msg", "īī�� �α��� access ��ū �߱� ���� �Դϴ�.");
				model.addAttribute("url", "/");
				return "/login/callback";
			}
			
			// �α��� ����� ������ �о�´�
			String apiResult = kakaoLoginBO.getUserProfile(oauthToken, serverUrl);
			
			log.info("apiResult= "+apiResult);
			JsonElement element = JsonParser.parseString(apiResult);
			JsonObject object = element.getAsJsonObject();
			
			String id = object.get("id").getAsString();
			
			log.info("kakao ID : " + id);
			// ���ǿ� ����� ���� ���
			session.setAttribute("islogin_r", "Y");
			session.setAttribute("id", id);
			
			return "redirect:/login/callback";
		}
		
		//�α׾ƿ� 
		@RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.POST }) 
		public String logout(HttpSession session)throws IOException { 
			System.out.println("����� logout"); 
			session.invalidate(); 
			return "redirect:/"; 
		}
}
