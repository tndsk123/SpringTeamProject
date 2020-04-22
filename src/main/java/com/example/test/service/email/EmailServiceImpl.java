package com.example.test.service.email;

import javax.inject.Inject;
import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.example.test.model.user.dto.UserDTO;

@Service
public class EmailServiceImpl implements EmailService {

	@Inject
	JavaMailSender mail;
	
	@Override
	public void joinMail(UserDTO dto) throws Exception {
		try {

			MimeMessage msg=mail.createMimeMessage();
			//받는 사람 이메일 주소()
			msg.addRecipient(RecipientType.TO, new InternetAddress(dto.getEmail()));
			//보내는 사람(이메일 주소+이름)
			msg.addFrom(new InternetAddress[] {new InternetAddress("tndsk123@naver.com", "운영진")});
			//이메일 제목
			msg.setSubject(dto.getUsername()+"님의 회원가입 인증 이메일입니다.", "utf-8");
			msg.setContent("<a href='http://localhost/spring02/member/email_chk.do?userid="+dto.getUserid()+"'>이메일 인증하기</a>", "text/html;charset=UTF-8");
			//이메일 보내기
			mail.send(msg);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
