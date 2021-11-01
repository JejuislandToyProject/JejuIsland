package com.kgitbank.jeju.controller;

import java.io.IOException;

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
import com.kgitbank.jeju.login.KakaoLoginBO;
import com.kgitbank.jeju.login.NaverLoginBO;
import com.kgitbank.jeju.service.LoginService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class LoginController {
		@Autowired
		private NaverLoginBO naverLoginBO;
		
		@Autowired
		private KakaoLoginBO kakaoLoginBO;
		
		@Autowired
		private LoginService loginservice;
		
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

			return "/login/login";
		}
		
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
				return "/login/login";
			}

			loginservice.naverLogin(session, oauthToken, serverUrl);
			
			return "redirect:/login/callback";
		}
		@RequestMapping(value = "/kakaoAuth", method = { RequestMethod.GET, RequestMethod.POST })
		public String kakaoOauth2ClientCallback(HttpServletRequest request, HttpServletResponse response, Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws Exception {
			String serverUrl = request.getScheme()+"://"+request.getServerName();
			if(request.getServerPort() != 80) {
				serverUrl = serverUrl + ":" + request.getServerPort();
			}
			
			String oauthToken = kakaoLoginBO.getAccessToken(request, code);

			if(oauthToken == null) {
				model.addAttribute("msg", "īī�� �α��� access ��ū �߱� ���� �Դϴ�.");
				model.addAttribute("url", "/");
				return "/login/login";
			}
			
			loginservice.kakaoLogin(session, oauthToken, serverUrl);
			return "redirect:/login/callback";
		}
		
		//logout
		@RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.POST }) 
		public String logout(HttpSession session)throws IOException { 
			session.removeAttribute("id");
			return "redirect:/"; 
		}
		
		@GetMapping("/login/callback")
		public String callback() {
			return "redirect:/";
		}
}
