package com.example.test.service.fund;

import java.util.List;

import javax.servlet.http.HttpSession;
import com.example.test.model.fund.dto.FundDTO;

public interface FundService {

	public List<FundDTO> supportList() throws Exception;
	public List<FundDTO> likeList() throws Exception;
	public List<FundDTO> viewcntList() throws Exception;
	public List<FundDTO> todayList() throws Exception;
	public void increateViewcnt(int bno, HttpSession session) throws Exception;
	public FundDTO view(int bno, HttpSession session) throws Exception;
}
