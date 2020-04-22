package com.example.test.model.grade.dto;

public class GradeDTO {

	private int gno; 
	private String grade;
	private int grade_limit;
	public int getGno() {
		return gno;
	}
	public void setGno(int gno) {
		this.gno = gno;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getGrade_limit() {
		return grade_limit;
	}
	public void setGrade_limit(int grade_limit) {
		this.grade_limit = grade_limit;
	}
	@Override
	public String toString() {
		return "GradeDTO [gno=" + gno + ", grade=" + grade + ", grade_limit=" + grade_limit + "]";
	}

}
