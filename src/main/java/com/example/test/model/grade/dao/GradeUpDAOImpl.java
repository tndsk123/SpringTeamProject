package com.example.test.model.grade.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.test.model.grade.dto.GradeUpDTO;

@Repository
public class GradeUpDAOImpl implements GradeUpDAO {

	@Inject
	SqlSession session;
	
	@Override
	public List<GradeUpDTO> gradeUpList() {
		return session.selectList("gradeup.list");
	}

	@Override
	public GradeUpDTO view(int gno) {
		return session.selectOne("gradeup.view", gno);
	}

	@Override
	public void insert(GradeUpDTO dto) {
		session.insert("gradeup.insert", dto);
	}

	@Override
	public void update(int gno) {
		session.update("gradeup.approve", gno);
	}
	@Override
	public GradeUpDTO check(String userid) {
		return session.selectOne("gradeup.check", userid);
	}
	@Override
	public void delete(int gno) {
		session.delete("gradeup.delete", gno);
	}

}
