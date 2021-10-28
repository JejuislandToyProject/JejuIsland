package com.kgitbank.jeju;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.FrameworkServlet;

import com.kgitbank.jeju.service.SessionService;

import lombok.extern.log4j.Log4j;

@Log4j
public class VisitorCounter implements HttpSessionListener{
	
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		if(se.getSession().isNew()) {
			log.info("create new session");
			getSessionService(se).addVisit();
		} else {
			log.info("already created session");
		}
		
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {}

	  private SessionService getSessionService(HttpSessionEvent se) {
		  WebApplicationContext context = 
				  WebApplicationContextUtils.getWebApplicationContext( 
						  se.getSession().getServletContext(), 
						  FrameworkServlet.SERVLET_CONTEXT_PREFIX + "appServlet" );
		  
		  return (SessionService) context.getBean("sessionService"); 
	}


}
