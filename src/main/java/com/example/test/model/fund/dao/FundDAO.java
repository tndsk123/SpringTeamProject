package com.example.test.model.fund.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.example.test.model.fund.dto.FundDTO;

public interface FundDAO {

	public List<FundDTO> supportList() throws Exception;
	public List<FundDTO> likeList() throws Exception;
	public List<FundDTO> viewcntList() throws Exception;
	public List<FundDTO> todayList() throws Exception;
	public void increateViewcnt(int bno) throws Exception;
	public FundDTO view(int bno) throws Exception;
}
