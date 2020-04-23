package com.example.test;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.test.service.fund.FundService;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	FundService fundService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(ModelAndView mav) throws Exception{
		logger.info("메인페이지 실행");
		mav.addObject("support_list", fundService.supportList());
		mav.addObject("cnt_list", fundService.viewcntList());
		mav.addObject("good_list", fundService.likeList());
		mav.addObject("today_list", fundService.todayList());
		mav.setViewName("home");
		return mav;
	}
	
}
