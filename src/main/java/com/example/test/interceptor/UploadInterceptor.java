package com.example.test.interceptor;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.example.test.model.user.dto.UserDTO;
import com.example.test.service.user.UserService;

public class UploadInterceptor extends HandlerInterceptorAdapter{

	@Inject
	UserService service;
	//메인 액션이 실행되기 전
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session=request.getSession();
		String userid=(String)session.getAttribute("userid");
		if(userid==null) {
			response.sendRedirect(request.getContextPath()+"/user/login.do?message=nologin");
			return false; //메인 액션으로 가지 않음
		}else {
			UserDTO dto=service.user_view(userid);
			int company_chk=dto.getCompany_chk();
			if(company_chk==0) {
				response.sendRedirect(request.getContextPath()+"/user/mypage.do?message=noappend");
				return false; //메인 액션으로 가지 않음
			}
			return true;
		}	
	}
	
	//메인 액션이 실행된 후
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}
}
