package com.example.test.model.admin.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.test.model.admin.dto.AdminDTO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Inject
	SqlSession session;
	
	@Override
	public String login(AdminDTO dto) {
		return session.selectOne("admin.login", dto);
	}

}
