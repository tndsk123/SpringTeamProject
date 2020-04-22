package com.example.test.model.user_fund.dao;

import java.util.List;

import com.example.test.model.user_fund.dto.UserFundDTO;

public interface UserFundDAO {

	public void fund_buy(UserFundDTO dto);
	public List<UserFundDTO> fund_view(String userid);
	public List<UserFundDTO> company_fund(int bno);
}
