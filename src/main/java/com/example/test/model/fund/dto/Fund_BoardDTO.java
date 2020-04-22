package com.example.test.model.fund.dto;

import java.util.Date;

public class Fund_BoardDTO {

	private int f_bno;
	private int bno;
	private String title;
	private String content;
	private int good;
	private int hate;
	private Date append_date;
	private String writer;
	private String categories;
	public int getF_bno() {
		return f_bno;
	}
	public void setF_bno(int f_bno) {
		this.f_bno = f_bno;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getGood() {
		return good;
	}
	public void setGood(int good) {
		this.good = good;
	}
	public int getHate() {
		return hate;
	}
	public void setHate(int hate) {
		this.hate = hate;
	}
	public Date getAppend_date() {
		return append_date;
	}
	public void setAppend_date(Date append_date) {
		this.append_date = append_date;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getCategories() {
		return categories;
	}
	public void setCategories(String categories) {
		this.categories = categories;
	}
	@Override
	public String toString() {
		return "Fund_BoardDTO [f_bno=" + f_bno + ", bno=" + bno + ", title=" + title + ", content=" + content
				+ ", good=" + good + ", hate=" + hate + ", append_date=" + append_date + ", writer=" + writer
				+ ", categories=" + categories + "]";
	}
	
	
}
