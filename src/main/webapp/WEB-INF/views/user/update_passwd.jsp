<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<script src="${path}/include/js/pass_check.js"></script>
<style type="text/css">
.findtitle {
	font-size: 35px;
	font-weight: 700;
	color: #000000;
}

.findid  {
	margin-right: 20px;
}

.findida {
	border-bottom: 2px solid;
}

.find-container {
	background-color: #f5f7fa;
	height: 700px;
}

.find-id-go p {
	margin-bottom : 0;
	color: #000000;
	
}

.findid-text {
	width: 400px;
	height: 50px;
}

.btn-findid {
	width: 400px;
	height: 50px;	
}

.email-check > input {
	padding: 0 .94118em;
}
</style>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span>
				<a href="${path}/user/mypage.do">마이페이지</a> <span class="mx-2 mb-0">/</span>
				<strong class="text-black">비밀번호변경</strong>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row mt-5">
			<h1 class="findtitle">비밀번호 변경</h1>
		</div>
	</div>
	<div class="find-container">
		<div class="row justify-content-center">
			<div class="mt-5 find-id-go">
				<p>비밀번호 변경 페이지입니다</p>
				<p>이전 비밀번호와 새로운 비밀번호가 필요합니다.</p>
				<p>입력이 완료되면 비밀번호가 변경됩니다.</p>
			</div>
		</div>
		<form method="post" action="${path}/user/update_pwd.do">
			<div class="mt-5">
				<div class="row justify-content-center email-check">
					<div class="form-group">
						<label for="pre_pw">이전 비밀번호</label>
						<input type="password" id="prw_pw" name="prw_pw" class="form-control findid-text">
					</div>				
				</div>
			</div>
			<div class="mt-5">
				<div class="row justify-content-center email-check">
					<div class="form-group">
						<label for="passwd">새 비밀번호</label>
						<input type="password" id="passwd" name="passwd" class="form-control findid-text"><br>
					</div>
				</div>
				<div class="row justify-content-center">
					<div id="pw_check"></div>
				</div>				
			</div>
			<div class="mt-5">
				<div class="row justify-content-center email-check">
					<div class="form-group">
						<label for="re_passwd">새 비밀번호 재입력</label>
						<input type="password" id="re_passwd" name="re_passwd" class="form-control findid-text"><br>
					</div>									
				</div>
				<div class="row justify-content-center">
					<div id="pw2_check"></div>
				</div>
			</div>
			<div class="mt-5">
				<div class="row justify-content-center">
					<button class="btn btn-primary btn-findid">확인</button>
				</div>
			</div>
		</form>
	</div>

	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>