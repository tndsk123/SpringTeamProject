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
			msg.addFrom(new InternetAddress[] {new InternetAddress("tndsk123@naver.com", "IFU운영진")});
			//이메일 제목
			msg.setSubject(dto.getUsername()+"님의 회원가입 인증 이메일입니다.", "utf-8");
			msg.setContent("<a href='http:/localhost/test/user/email_chk.do?userid="+dto.getUserid()+"'>이메일 인증하기</a>", "text/html;charset=UTF-8");
			//이메일 보내기
			mail.send(msg);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void Look_id_Mail(UserDTO dto) throws Exception {
		try {
			MimeMessage msg=mail.createMimeMessage();
			//받는 사람 이메일 주소()
			msg.addRecipient(RecipientType.TO, new InternetAddress(dto.getEmail()));
			//보내는 사람(이메일 주소+이름)
			msg.addFrom(new InternetAddress[] {new InternetAddress("tndsk123@naver.com", "IFU운영진")});
			//이메일 제목
			msg.setSubject("IFU 아이디 찾기에 대한 이메일입니다.", "utf-8");
			msg.setContent("<p>회원님의 아이디는"+dto.getUserid()+" 입니다.</p><a href='http:/localhost/test/user/looking_for.do'>비밀번호 찾기</a>", "text/html;charset=UTF-8");
			//이메일 보내기
			mail.send(msg);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void Look_pw_joinMail(UserDTO dto) throws Exception {
		try {
			MimeMessage msg=mail.createMimeMessage();
			//받는 사람 이메일 주소()
			msg.addRecipient(RecipientType.TO, new InternetAddress(dto.getEmail()));
			//보내는 사람(이메일 주소+이름)
			msg.addFrom(new InternetAddress[] {new InternetAddress("tndsk123@naver.com", "IFU운영진")});
			//이메일 제목
			msg.setSubject("IFU 비밀번호 찾기에 대한 이메일입니다.", "utf-8");
			msg.setContent("<p>회원님의 변경된 비밀번호는"+dto.getPasswd()+" 입니다.</p><p>로그인 후 꼭 변경하여 주세요</p><a href='http:/localhost/test/user/login.do'>로그인하러가기</a>", "text/html;charset=UTF-8");
			//이메일 보내기
			mail.send(msg);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
