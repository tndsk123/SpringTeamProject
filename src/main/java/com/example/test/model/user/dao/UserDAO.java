package com.example.test.model.user.dao;

import com.example.test.model.user.dto.UserDTO;

public interface UserDAO {

	public String login(UserDTO dto);
	public UserDTO user_view(String userid);
	public void insert(UserDTO dto);
	public int id_chk(String userid);
	public void grade_up(int gno);
	public void email_chk(String userid);
	public String look_id(UserDTO dto);
	public String look_pw(UserDTO dto);
	public void update_pw(String userid, String passwd);
}
