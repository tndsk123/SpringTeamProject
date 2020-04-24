package com.example.test.service.coupon;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.test.model.coupon.dao.CouponDAO;
import com.example.test.model.coupon.dto.CouponDTO;

@Service
public class CouponServiceImpl implements CouponService {

	@Inject
	CouponDAO dao;
	
	@Override
	public List<CouponDTO> coupon_box() {
		return dao.coupon_box();
	}

	@Override
	public int count_coupon() {
		return dao.count_coupon();
	}
	
	@Override
	public CouponDTO view(int cou_no) {
		return dao.view(cou_no);
	}
}
