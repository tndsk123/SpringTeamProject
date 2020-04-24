package com.example.test.controller.coupon;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.test.controller.fund.FundController;
import com.example.test.model.coupon.dto.CouponDTO;
import com.example.test.model.coupon.dto.User_couponDTO;
import com.example.test.service.coupon.CouponService;
import com.example.test.service.coupon.User_couponService;

@Controller
@RequestMapping("coupon/*")
public class CouponController {
	
	private static final Logger logger =LoggerFactory.getLogger(FundController.class);
	
	@Inject
	CouponService couponService;
	@Inject
	User_couponService user_couponService;
	
	
	@RequestMapping("coupon_box.do")
	public ModelAndView coupon_box(ModelAndView mav) {
		mav.addObject("list", couponService.coupon_box());
		mav.addObject("count", couponService.count_coupon());
		mav.setViewName("coupon/coupon_box");
		return mav;
	}
	
	@RequestMapping("get_coupon.do")
	@ResponseBody
	public ModelAndView get_coupon(int cou_no, HttpSession session){
		String userid=(String)session.getAttribute("userid");
		System.out.println(cou_no);
		CouponDTO dto=couponService.view(cou_no);
		User_couponDTO dto2=new User_couponDTO();
		dto2.setUserid(userid);
		dto2.setCou_no(cou_no);
		dto2.setCoupon_content(dto.getCoupon_content());
		dto2.setCoupon_name(dto.getCoupon_name());
		dto2.setDiscount(dto.getDiscount());
		dto2.setValidity(dto.getValidity());
		dto2.setC_division(dto.getC_division());
		user_couponService.get_coupon(dto2);
		ModelAndView mav=new ModelAndView();
		return mav;
	}
	
	@RequestMapping("my_coupon.do")
	public ModelAndView my_coupon(HttpSession session) {
		String userid=(String)session.getAttribute("userid");
		user_couponService.view(userid);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("coupon/my_coupon");
		mav.addObject("list", user_couponService.view(userid));
		mav.addObject("count", user_couponService.count_coupon(userid));
		return mav;
	}
}
