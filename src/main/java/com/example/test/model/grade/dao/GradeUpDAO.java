package com.example.test.model.grade.dao;

import java.util.List;

import com.example.test.model.grade.dto.GradeUpDTO;

public interface GradeUpDAO {

	public List<GradeUpDTO> gradeUpList();
	public GradeUpDTO view(int gno);
	public GradeUpDTO check(String userid);
	public void insert(GradeUpDTO dto);
	public void update(int gno);
	public void delete(int gno);
}
