package com.kgitbank.jeju.common;

import javax.servlet.http.HttpSession;

public class LoginVerifier {
	public static boolean isLogin(HttpSession session) {
		return session.getAttribute("id") != null? true:false;
	}

}
