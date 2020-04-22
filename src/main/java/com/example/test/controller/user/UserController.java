package com.example.test.controller.user;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.test.model.user.dto.UserDTO;
import com.example.test.service.user.UserService;

@Controller
@RequestMapping("user/*")
public class UserController {

	private static final Logger logger =LoggerFactory.getLogger(UserController.class);
	
	@Inject
	UserService userService;
	@Inject
	BCryptPasswordEncoder pwEncoder;
	
	@RequestMapping("login.do")
	public String login() {
		return "user/login";
	}
	
	@RequestMapping("join.do")
	public String join() {
		return "user/join";
	}
	
	@RequestMapping("join2.do")
	public String join2() {
		return "user/join2";
	}
	
	@RequestMapping("join_user.do")
	public ModelAndView insert(@ModelAttribute UserDTO dto) {
		dto.setPasswd(pwEncoder.encode(dto.getPasswd()));
		userService.insert(dto);
		ModelAndView mav=new ModelAndView();
		mav.addObject("dto",dto);
		mav.setViewName("user/email_chk");
		return mav;
	}
	
	@RequestMapping("login_check.do")
	public ModelAndView login(UserDTO dto, HttpSession session) {
		String result=userService.login(dto);
		ModelAndView mav=new ModelAndView();
		if(pwEncoder.matches(dto.getPasswd(), result)) {
			mav.setViewName("redirect:/");
			mav.addObject("message", "success");
		}else {
			mav.setViewName("board/login");
			mav.addObject("message", "error");   
		}  
		return mav;
	}
	
	@RequestMapping("email_chk.do")
	public ModelAndView email_chk(String userid) {
		userService.email_chk(userid);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("member/email_chk_success");
		mav.addObject("userid", userid);
		return mav;
	}
}
