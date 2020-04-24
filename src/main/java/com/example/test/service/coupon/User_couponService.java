package com.example.test.service.coupon;

import java.util.List;

import com.example.test.model.coupon.dto.User_couponDTO;

public interface User_couponService {

	public List<User_couponDTO> coupon_box();
	public int count_coupon(String userid);
	public List<User_couponDTO> view(String userid);
	public void get_coupon(User_couponDTO dto);
}
