package com.example.test.controller.user;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@RequestMapping("looking_for.do")
	public String looking_for() {
		return "user/looking_for";
	}
	
	@RequestMapping("join_user.do")
	public ModelAndView insert(@ModelAttribute UserDTO dto) {
		logger.info(dto.getGender());
		dto.setPasswd(pwEncoder.encode(dto.getPasswd()));
		userService.insert(dto);
		ModelAndView mav=new ModelAndView();
		mav.addObject("dto",dto);
		mav.setViewName("user/email_chk");
		return mav;
	}
	
	@RequestMapping(value = "id_chk", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(@RequestParam("userid") String userid) {
		return userService.id_chk(userid);
	}
	
	@RequestMapping("login_check.do")
	public ModelAndView login(UserDTO dto, HttpSession session, ModelAndView mav) {
		String result=userService.login(dto);
		if(pwEncoder.matches(dto.getPasswd(), result)) {
			session.setAttribute("userid", dto.getUserid());
			mav.setViewName("redirect:/");
			mav.addObject("message", "login");
		}else {
			mav.setViewName("user/login");
			mav.addObject("message", "error");   
		}  
		return mav;
	}
	
	@RequestMapping("email_chk.do")
	public ModelAndView email_chk(String userid) {
		userService.email_chk(userid);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("user/email_chk_success");
		mav.addObject("userid", userid);
		return mav;
	}
	
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session, ModelAndView mav) {
		session.invalidate();
		mav.setViewName("redirect:/");
		mav.addObject("message", "logout");
		return mav;
	}
	
	@RequestMapping("mypage.do")
	public ModelAndView mypage(HttpSession session) {
		ModelAndView mav=new ModelAndView();
		String userid=(String)session.getAttribute("userid");
		mav.addObject("dto", userService.user_view(userid));
		mav.setViewName("user/mypage");
		return mav;
	}
	
	@RequestMapping("look_id.do")
	public ModelAndView look_id(@ModelAttribute UserDTO dto) {
		int result=userService.look_id(dto);
		ModelAndView mav=new ModelAndView();
		if(result==1) {
			mav.setViewName("user/look_id_success");
			mav.addObject("dto", dto);
			return mav;
		}else {
			mav.setViewName("redirect:/user/looking_for.do");
			mav.addObject("message", "error");			
		}		
		return mav;
	}
	
	@RequestMapping("look_pw.do")
	public ModelAndView look_pw(@ModelAttribute UserDTO dto) {
		int result=userService.look_pw(dto);
		ModelAndView mav=new ModelAndView();
		if(result==1) {
			mav.setViewName("user/look_pw_success");
			mav.addObject("dto", dto);
			return mav;
		}else {
			mav.setViewName("redirect:/user/looking_for.do");
			mav.addObject("message", "error");			
		}		
		return mav;
	}
	
}
