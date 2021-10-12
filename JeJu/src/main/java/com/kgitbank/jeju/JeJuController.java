package com.kgitbank.jeju;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class JeJuController {
	
	@GetMapping("/login")
	public String login() {
		log.info("Naver Login");
		return "/login/login";
	}
	
	@GetMapping("/callbak")
	public String callback() {
		log.info("Naver Callabck");
		return "/login/NaverCallback";
	}

}
