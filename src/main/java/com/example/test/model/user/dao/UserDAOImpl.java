package com.example.test.model.user.dao;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.test.model.user.dto.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	SqlSession session;
	
	@Override
	public String login(UserDTO dto) {
		return session.selectOne("user.login", dto);
	}

	@Override
	public UserDTO user_view(String userid) {
		return session.selectOne("user.view", userid);
	}
	
	@Override
	public int id_chk(String userid) {
		return session.selectOne("user.id_chk", userid);
	}
	
	@Override
	public void insert(UserDTO dto) {
		session.insert("user.insert", dto);		
	}

	@Override
	public void grade_up(int gno) {
		session.update("user.grade_up", gno);
	}
	
	@Override
	public void email_chk(String userid) {
		session.update("user.email_chk", userid);
	}
	@Override
	public String look_id(UserDTO dto) {
		return session.selectOne("user.look_id", dto);
	}
	@Override
	public String look_pw(UserDTO dto) {
		return session.selectOne("user.look_pw", dto);
	}
	@Override
	public void update_pw(String userid, String passwd) {
		Map<String,Object> map=new HashMap<>();
		map.put("userid", userid);
		map.put("passwd", passwd);
		session.update("user.update_pw", map);		
	}
	@Override
	public void update_user(UserDTO dto) {
		session.update("user.update_user", dto);
	}
	
	@Override
	public void update_passwd(UserDTO dto) {
		session.update("user.update_passwd", dto);
	}
	@Override
	public void update_coupon(String userid) {
		session.update("user.update_coupon", userid);
	}
}
