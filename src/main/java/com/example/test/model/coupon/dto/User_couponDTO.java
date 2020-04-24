package com.example.test.model.coupon.dto;

import java.util.Date;

public class User_couponDTO {
	
	private int cou_no;
	private String c_division;
	private String userid;
	private String coupon_name;
	private String coupon_content;
	private int discount;
	private Date validity;
	
	
	public String getC_division() {
		return c_division;
	}
	public void setC_division(String c_division) {
		this.c_division = c_division;
	}
	public int getCou_no() {
		return cou_no;
	}
	public void setCou_no(int cou_no) {
		this.cou_no = cou_no;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getCoupon_name() {
		return coupon_name;
	}
	public void setCoupon_name(String coupon_name) {
		this.coupon_name = coupon_name;
	}
	public String getCoupon_content() {
		return coupon_content;
	}
	public void setCoupon_content(String coupon_content) {
		this.coupon_content = coupon_content;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public Date getValidity() {
		return validity;
	}
	public void setValidity(Date validity) {
		this.validity = validity;
	}
	@Override
	public String toString() {
		return "User_couponDTO [cou_no=" + cou_no + ", c_division=" + c_division + ", userid=" + userid
				+ ", coupon_name=" + coupon_name + ", coupon_content=" + coupon_content + ", discount=" + discount
				+ ", validity=" + validity + "]";
	}
	
	
}
