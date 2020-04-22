package com.example.test.service.email;

import com.example.test.model.user.dto.UserDTO;

public interface EmailService {

	public void joinMail(UserDTO dto) throws Exception;
}
