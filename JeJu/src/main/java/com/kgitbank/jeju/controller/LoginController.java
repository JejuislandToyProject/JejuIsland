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
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.kgitbank.jeju.login.NaverLoginBO;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class LoginController {
		@Autowired
		NaverLoginBO naverLoginBO;
		
		// 로그인 화면
		@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
		public String login(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) {

			String serverUrl = request.getScheme()+"://"+request.getServerName();
			if(request.getServerPort() != 80) {
				serverUrl = serverUrl + ":" + request.getServerPort();
			}
			
			String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session, serverUrl);
			model.addAttribute("naverAuthUrl", naverAuthUrl);
			log.info("URL"+naverAuthUrl);

			return "/login/login";
		}

		// 네이버 로그인 성공시 callback
		@RequestMapping(value = "/naverAuth", method = { RequestMethod.GET, RequestMethod.POST })
		public String naverOauth2ClientCallback(HttpServletRequest request, HttpServletResponse response, Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws Exception {

			String serverUrl = request.getScheme()+"://"+request.getServerName();
			if(request.getServerPort() != 80) {
				serverUrl = serverUrl + ":" + request.getServerPort();
			}

			OAuth2AccessToken oauthToken;
			oauthToken = naverLoginBO.getAccessToken(session, code, state, serverUrl);
			if(oauthToken == null) {
				model.addAttribute("msg", "네이버 로그인 access 토큰 발급 오류 입니다.");
				model.addAttribute("url", "/");
				return "/login/callback";
			}
			
			// 로그인 사용자 정보를 읽어온다
			String apiResult = naverLoginBO.getUserProfile(oauthToken, serverUrl);
			
			
			JsonElement element = JsonParser.parseString(apiResult);
			JsonObject object = element.getAsJsonObject();
			JsonObject response_obj = (JsonObject) object.get("response");
			
			String id = response_obj.get("id").getAsString();
			String gender = response_obj.get("gender").getAsString();
			
			// 세션에 사용자 정보 등록
			session.setAttribute("islogin_r", "Y");
			session.setAttribute("id", id);
			session.setAttribute("gender", gender);
			
			return "redirect:/";
		}
		
		//로그아웃 
		@RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.POST }) 
		public String logout(HttpSession session)throws IOException { 
			System.out.println("여기는 logout"); 
			session.invalidate(); 
			return "redirect:/"; 
		}

}
