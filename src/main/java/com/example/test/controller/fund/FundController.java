package com.example.test.controller.fund;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.test.model.fund.dto.FundDTO;
import com.example.test.model.user.dto.UserDTO;
import com.example.test.service.fund.FundService;

@Controller
@RequestMapping("fund/*")
public class FundController {

	private static final Logger logger =LoggerFactory.getLogger(FundController.class);
	
	@Inject
	FundService fundService;
	
	@RequestMapping("view/{bno}")
	public ModelAndView view(@PathVariable("bno") int bno, HttpSession session) throws Exception {
		FundDTO dto=fundService.view(bno,session);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("fund/fund_view");
		mav.addObject("list", dto);
		/*
		 * mav.addObject("grade", boardgradeService.list(bno)); mav.addObject("company",
		 * companyService.view(dto.getCompany_name())); mav.addObject("comment",
		 * fundboardService.list(bno)); mav.addObject("count",
		 * fundboardService.count(bno));
		 */
		return mav;
	}
	
	@RequestMapping("buy/{bno}")
	public ModelAndView buy(@PathVariable("bno") int bno, ModelAndView mav, HttpSession session) throws Exception{
		String userid=(String)session.getAttribute("userid");
		/*
		 * UserDTO user_view=userService.user_view(userid); int
		 * grade=user_view.getGrade(); mav.addObject("user_info", user_view);
		 * mav.addObject("list", boardService.view(bno)); mav.addObject("grade",
		 * gradeService.grade_check(grade)); mav.setViewName("board/buy");
		 */
		return mav;
	}
}
