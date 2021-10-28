package com.kgitbank.jeju.common;

import javax.servlet.http.HttpSession;

public class LoginVerifier {
	static boolean IsLogin(HttpSession session) {
		return session.getAttribute("id") != null? true:false;
	}

}
