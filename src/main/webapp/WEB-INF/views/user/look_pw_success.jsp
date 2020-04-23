<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<style type="text/css">
.emailname {
		font-size: 45px;
		color: #ff4da6;
}
.fa-envelope-square {
	size: 15px;
	margin-right: 10px;
}

.emailsecondname {
	font-size: 30px;
	color: black;
}

.jumbotron div > p {
	margin-bottom: 5px;
	color: #1a1a1a;
}

.contents-name {
	font-size: 20px;
	color: #ff4da6;
	font-weight: 700;
}

.welcome {
	font-size: 20px;
	margin-left: 5px;
	font-weight: 700;
	color: #1a1a1a;
}
</style>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="container">
		<div class="row justify-content-center mt-5">
			<h1>
				<i class="fa fa-envelope-square"></i><span class="emailname">회원님의 비밀번호가 이메일로 전송되었습니다.</span>
			</h1>
		</div>
	</div>
	<div class="row justify-content-center mt-5">
		<div class="jumbotron shadow rounded">
			<div>
				<span class="contents-name">${dto.userid}님!</span><strong class="welcome">회원님의 비밀번호가 이메일로 전송되었습니다.</strong>
				<p>안녕하세요. ${dto.userid} 회원님!</p>
				<p>아래의 회원정보를 확인해 보시고 이메일(${dto.email})을 통해 비밀번호를 확인하시기 바랍니다.</p>
				<p>타인에게 정보가 유출될 경우 악용의 우려가 있으니 노출되지 않도록 각별히 주의하시기 바랍니다.</p>
				<p>궁금하신 사항은 IF you 고객센터(00-000-0000)로 연락 주시면 성심 성의껏 상담해드리겠습니다.</p>
				<p>감사합니다.</p>
			</div>
		</div>
	</div>
	<div class="row justify-content-center mt-5 mb-5">
		<button class="email-button btn btn-primary" onclick="location.href='${path}'">메인페이지로 이동</button>
	</div>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>