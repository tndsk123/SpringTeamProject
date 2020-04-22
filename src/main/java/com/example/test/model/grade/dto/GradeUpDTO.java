package com.example.test.model.grade.dto;

import java.util.Date;

public class GradeUpDTO {

	private String userid;
	private String title;
	private int grade;
	private int want_grade;
	private String evidence;
	private Date post_date;
	private int approve;
	private int gno;
	
	public int getGno() {
		return gno;
	}
	public void setGno(int gno) {
		this.gno = gno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getWant_grade() {
		return want_grade;
	}
	public void setWant_grade(int want_grade) {
		this.want_grade = want_grade;
	}
	public String getEvidence() {
		return evidence;
	}
	public void setEvidence(String evidence) {
		this.evidence = evidence;
	}
	public Date getPost_date() {
		return post_date;
	}
	public void setPost_date(Date post_date) {
		this.post_date = post_date;
	}
	public int getApprove() {
		return approve;
	}
	public void setApprove(int approve) {
		this.approve = approve;
	}
	@Override
	public String toString() {
		return "GradeUpDTO [gno=" + gno + ", userid=" + userid + ", title=" + title + ", grade=" + grade
				+ ", want_grade=" + want_grade + ", evidence=" + evidence + ", post_date=" + post_date + ", approve="
				+ approve + "]";
	}
	
}
