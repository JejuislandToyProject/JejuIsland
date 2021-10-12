package com.kgitbank.jeju;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class JeJuController {
	
	@GetMapping("/login")
	public String login() {
		return "redirect:/jeju/login/NaverCallback.jsp";
	}

}
