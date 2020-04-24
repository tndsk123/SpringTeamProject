<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<!-- 2020-04-24 수정 스크립트 -->
<%-- <script src="${path}/include/js/look_for.js"></script> --%>
<c:if test="${message == 'error'}">
	<script type="text/javascript">
		alert("입력하신 정보가 없습니다.");
	</script>
</c:if>
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
				<a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span> <strong
					class="text-black">아이디 / 비밀번호 찾기</strong>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row mt-5">
			<h1 class="findtitle">아이디/ 비밀번호 찾기</h1>
		</div>
		<div class="row mt-5">
			<div class="col">
				<ul class="nav nav-tabs">
					<li class="col-md-6	text-center active"><a data-toggle="tab" href="#tab1">아이디 찾기</a></li>
					<li class="col-md-6 text-center"><a data-toggle="tab" href="#tab2">비밀번호 찾기</a></li>
				</ul>
				<div class="tab-content">
					<div id="tab1" class="tab-pane fade in activce">
						<div class="find-container">
							<div class="row justify-content-center">
								<div class="mt-5 find-id-go">
									<p>이프유는 아이디를 잊어버리셨나요?</p>
									<p>소유하고 계신 계정을 입력해보세요.</p>
									<p>가입여부를 확인해드립니다.</p>
								</div>
							</div>
							<form class="form-signin" method="post" name="form_id" action="${path}/user/look_id.do">
							<div class="mt-5">
								<div class="row justify-content-center email-check">
									<input type="text" placeholder="아이디" id="username" name="username" class="form-control findid-text">
								</div>																
							</div>
							<div class="mt-5">
								<div class="row justify-content-center email-check">
									<input type="text" placeholder="이메일 계정" id="email" name="email" class="form-control findid-text">
								</div>
							</div>
							<div class="mt-5">
								<div class="row justify-content-center">
									<button type="submit" class="btn btn-primary btn-findid">확인</button>
								</div>
							</div>
							</form>
						</div>
					</div>
					<div id="tab2" class="tab-pane fade">
						<div class="find-container">
							<div class="row justify-content-center">
								<div class="mt-5 find-id-go">
									<p>이프유는 비밀번호를 잊어버리셨나요?</p>
									<p>소유하고 계신 계정을 입력해보세요.</p>
									<p>가입여부를 확인해드립니다.</p>
								</div>
							</div>
							<form class="form-signin" method="post" name="form_id" action="${path}/user/look_pw.do">
							<div class="mt-5">
								<div class="row justify-content-center email-check">
									<input type="text" placeholder="아이디" id="userid" name="userid" class="form-control findid-text">
								</div>																
							</div>
							<div class="mt-5">
								<div class="row justify-content-center email-check">
									<input type="text" placeholder="이메일 계정" id="email" name="email" class="form-control findid-text">
								</div>
							</div>
							<div class="mt-5">
								<div class="row justify-content-center">
									<button type="submit" class="btn btn-primary btn-findid">확인</button>
								</div>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>