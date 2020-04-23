package com.example.test.service.user;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.test.model.user.dao.UserDAO;
import com.example.test.model.user.dto.UserDTO;
import com.example.test.service.email.EmailService;
import com.example.test.util.Random;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	UserDAO dao;
	@Inject
	EmailService email;
	@Inject
	BCryptPasswordEncoder pwEncoder;
	
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
	
	@Override
	public int look_id(UserDTO dto) {
		String userid=dao.look_id(dto);
		dto.setUserid(userid);
		if(userid != null) {
			try {
				email.Look_id_Mail(dto);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return 1;
		}else {
			return 0;	
		} 
	}
	@Override
	public int look_pw(UserDTO dto) {
		String userid=dao.look_pw(dto);
		String pre_passwd=Random.random("1");
		String passwd=pwEncoder.encode(pre_passwd);
		dao.update_pw(userid, passwd);
		dto.setPasswd(pre_passwd);
		if(userid != null) {
			try {
				email.Look_pw_joinMail(dto);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return 1;
		}else {
			return 0;	
		} 
	}
}
