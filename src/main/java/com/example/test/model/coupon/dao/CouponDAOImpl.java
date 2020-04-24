package com.example.test.model.coupon.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.test.model.coupon.dto.CouponDTO;

@Repository
public class CouponDAOImpl implements CouponDAO {

	@Inject
	SqlSession session;
	
	@Override
	public List<CouponDTO> coupon_box() {
		return session.selectList("coupon.list");
	}
	
	@Override
	public int count_coupon() {
		return session.selectOne("coupon.count");
	}
	
	@Override
	public CouponDTO view(int cou_no) {
		return session.selectOne("coupon.view", cou_no);
	}

}
