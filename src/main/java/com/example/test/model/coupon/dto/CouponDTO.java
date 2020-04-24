package com.example.test.model.coupon.dto;

import java.util.Date;

public class CouponDTO {

	private int cou_no;
	private String c_division;
	private String coupon_name;
	private String coupon_content;
	private int discount;
	private Date validity;
	private int secret;
		
	public String getC_division() {
		return c_division;
	}
	public void setC_division(String c_division) {
		this.c_division = c_division;
	}
	public int getSecret() {
		return secret;
	}
	public void setSecret(int secret) {
		this.secret = secret;
	}
	public int getCou_no() {
		return cou_no;
	}
	public void setCou_no(int cou_no) {
		this.cou_no = cou_no;
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
		return "CouponDTO [cou_no=" + cou_no + ", coupon_name=" + coupon_name + ", coupon_content=" + coupon_content
				+ ", discount=" + discount + ", validity=" + validity + ", secret=" + secret + "]";
	}

	
}
