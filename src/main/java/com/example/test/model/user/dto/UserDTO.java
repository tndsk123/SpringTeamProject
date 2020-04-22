package com.example.test.model.user.dto;

import java.util.Date;

public class UserDTO {

	private String userid;
	private String passwd;
	private String username;
	private String gender;
	private Date birth_date;
	private String hp;
	private String email;
	private String address1;
	private String address2;
	private String address3;
	private int grade;
	private int email_chk;
	private int account_chk;
	private int company_chk;
	private int coupon_chk;
	private Date join_date;
	
	public Date getBirth_date() {
		return birth_date;
	}
	public void setBirth_date(Date birth_date) {
		this.birth_date = birth_date;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getAddress3() {
		return address3;
	}
	public void setAddress3(String address3) {
		this.address3 = address3;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getEmail_chk() {
		return email_chk;
	}
	public void setEmail_chk(int email_chk) {
		this.email_chk = email_chk;
	}
	public int getAccount_chk() {
		return account_chk;
	}
	public void setAccount_chk(int account_chk) {
		this.account_chk = account_chk;
	}
	public int getCompany_chk() {
		return company_chk;
	}
	public void setCompany_chk(int company_chk) {
		this.company_chk = company_chk;
	}
	public int getCoupon_chk() {
		return coupon_chk;
	}
	public void setCoupon_chk(int coupon_chk) {
		this.coupon_chk = coupon_chk;
	}
	@Override
	public String toString() {
		return "UserDTO [userid=" + userid + ", passwd=" + passwd + ", username=" + username + ", gender=" + gender
				+ ", birth_date=" + birth_date + ", hp=" + hp + ", email=" + email + ", address1=" + address1
				+ ", address2=" + address2 + ", address3=" + address3 + ", grade=" + grade + ", email_chk=" + email_chk
				+ ", account_chk=" + account_chk + ", company_chk=" + company_chk + ", coupon_chk=" + coupon_chk
				+ ", join_date=" + join_date + "]";
	}
	
	
}
