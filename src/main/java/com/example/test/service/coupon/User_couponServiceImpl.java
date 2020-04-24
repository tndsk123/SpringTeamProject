package com.example.test.service.coupon;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.test.model.coupon.dao.User_couponDAO;
import com.example.test.model.coupon.dto.User_couponDTO;
import com.example.test.model.user.dao.UserDAO;

@Service
public class User_couponServiceImpl implements User_couponService {

	@Inject
	User_couponDAO dao;
	@Inject
	UserDAO userdao;
	
	@Override
	public List<User_couponDTO> coupon_box() {
		return dao.coupon_box();
	}

	@Override
	public int count_coupon(String userid) {
		return dao.count_coupon(userid);
	}

	@Override
	public List<User_couponDTO> view(String userid) {
		return dao.view(userid);
	}

	@Override
	@Transactional
	public void get_coupon(User_couponDTO dto) {
		dao.get_coupon(dto);
		String userid=dto.getUserid();
		userdao.update_coupon(userid);
	}

}
