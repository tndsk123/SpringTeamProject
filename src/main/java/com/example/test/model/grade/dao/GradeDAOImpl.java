package com.example.test.model.grade.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.test.model.grade.dto.GradeDTO;

@Repository
public class GradeDAOImpl implements GradeDAO {

	@Inject
	SqlSession session;
	
	@Override
	public GradeDTO grade_list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public GradeDTO grade_check(int grade) {
		return session.selectOne("grade.grade_check", grade);
	}

}
