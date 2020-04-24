package com.example.test.model.coupon.dao;

import java.util.List;

import com.example.test.model.coupon.dto.CouponDTO;

public interface CouponDAO {

	public List<CouponDTO> coupon_box();
	public int count_coupon();
	public CouponDTO view(int cou_no);
}
