package com.example.test.model.grade.dao;

import com.example.test.model.grade.dto.GradeDTO;

public interface GradeDAO {

	public GradeDTO grade_list();
	public GradeDTO grade_check(int grade);
}
