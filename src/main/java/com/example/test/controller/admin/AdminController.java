package com.example.test.controller.admin;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.test.model.admin.dto.AdminDTO;
import com.example.test.service.admin.AdminService;

@Controller
@RequestMapping("admin/*")
public class AdminController {

	private static final Logger logger =LoggerFactory.getLogger(AdminController.class);
	
	@Inject
	AdminService Adminservice;
	@Inject
	BCryptPasswordEncoder pwEncoder;
	
	@RequestMapping("login_check.do")
	public ModelAndView login(AdminDTO dto, HttpSession session) {
		String result=Adminservice.login(dto);		
		ModelAndView mav=new ModelAndView();
		if(pwEncoder.matches(dto.getPasswd(), result)) {
			mav.setViewName("redirect:/");
			session.setAttribute("userid", dto.getUserid());
		}else {
			mav.setViewName("user/login");
			mav.addObject("message", "error");   
		}  
		return mav;
	}

}
