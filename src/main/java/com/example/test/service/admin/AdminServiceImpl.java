package com.example.test.service.admin;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.test.model.admin.dao.AdminDAO;
import com.example.test.model.admin.dto.AdminDTO;

@Service
public class AdminServiceImpl implements AdminService {

	@Inject
	AdminDAO dao;
	
	@Override
	public String login(AdminDTO dto) {
		return dao.login(dto);
	}

}
