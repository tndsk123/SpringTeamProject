package com.example.test.model.coupon.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.test.model.coupon.dto.User_couponDTO;

@Repository
public class User_couponDAOImpl implements User_couponDAO {

	@Inject
	SqlSession session;
	
	@Override
	public List<User_couponDTO> coupon_box() {
		return session.selectList("user_coupon.list");
	}

	@Override
	public int count_coupon(String userid) {
		return session.selectOne("user_coupon.count",userid);
	}

	@Override
	public List<User_couponDTO> view(String userid) {
		return session.selectList("user_coupon.view",userid);
	}
	
	@Override
	public void get_coupon(User_couponDTO dto) {
		session.insert("user_coupon.get_coupon", dto);
	}

}
