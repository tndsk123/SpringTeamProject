package com.example.test.service.user;

import com.example.test.model.user.dto.UserDTO;

public interface UserService {

	public String login(UserDTO dto);
	public UserDTO user_view(String userid);
	public void insert(UserDTO dto);
	public int id_chk(String userid);
	public void grade_up(int gno);
	public void email_chk(String userid);
}
