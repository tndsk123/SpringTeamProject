package com.example.test.model.company.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.test.model.company.dto.CompanyDTO;

@Repository
public class CompanyDAOImpl implements CompanyDAO {

	@Inject
	SqlSession session;
	
	@Override
	public CompanyDTO view(String company_name) {
		return session.selectOne("company.view", company_name);
	}

	@Override
	public void insert(CompanyDTO dto) {
		session.insert("company.insert", dto);
	}

	@Override
	public String check(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

}
