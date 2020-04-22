package com.example.test.service.user;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.test.model.user.dao.UserDAO;
import com.example.test.model.user.dto.UserDTO;
import com.example.test.service.email.EmailService;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	UserDAO dao;
	@Inject
	EmailService email;
	
	@Override
	public String login(UserDTO dto) {
		return dao.login(dto);
	}

	@Override
	public UserDTO user_view(String userid) {
		return dao.user_view(userid);
	}
	
	@Override
	public int id_chk(String userid) {
		return dao.id_chk(userid);
	}
	
	@Override
	@Transactional
	public void insert(UserDTO dto) {
		dao.insert(dto);
		try {
			email.joinMail(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void grade_up(int gno) {
		dao.grade_up(gno);
	}
	
	@Override
	public void email_chk(String userid) {
		dao.email_chk(userid);		
	}

}
