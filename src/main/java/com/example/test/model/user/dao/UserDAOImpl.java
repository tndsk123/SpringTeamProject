package com.example.test.model.user.dao;

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
}
