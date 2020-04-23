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
		<h1>아이디 / 비밀번호 찾기</h1>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="nav nav-tabs">
					<li class="col-md-6	text-center active"><a data-toggle="tab" href="#tab1">아이디 찾기</a></li>
					<li class="col-md-6 text-center"><a data-toggle="tab" href="#tab2">비밀번호 찾기</a></li>
				</ul>
			
				<div class="tab-content">
					<div id="tab1" class="tab-pane fade in activce">
						<div id="mt-3">
							<form class="form-signin" method="post" name="form_id" action="${path}/user/look_id.do">
								<h1 class="h3 mb-3 font-weight-normal"
									style="text-align: center">아이디 찾기</h1>
								<div class="input-group">
									<input type="text" id="username" name="username" class="form-control" placeholder="이름">
									<div id="name_check"></div>
								</div>
								<div class="input-group mt-3">
									<input type="email" id="email" name="email" class="form-control" placeholder="이메일">
									<div id="email_check"></div>
								</div>
								<div class="input-group mt-3">
									<button class="btn btn-primary btn-block" type="submit" id="btnLook_id">
											<i class="fa fa-search"></i> 아이디찾기
									</button>
								</div>
							</form>
						</div>
					</div>
					<div id="tab2" class="tab-pane fade">
						<div id="text-center mt-3">
							<form class="form-signin" method="post" name="form_pw" action="${path}/user/look_pw.do">
								<h1 class="h3 mb-3 font-weight-normal" style="text-align: center">비밀번호 찾기</h1>
								<div class="input-group">
									<input type="text" id="userid" name="userid" class="form-control" placeholder="아이디">
									<div id="id_check"></div>
								</div>
								<div class="input-group mt-3">
									<input type="email" id="email2" name="email"	class="form-control" placeholder="이메일">
									<div id="email_check"></div>
								</div>
								<div class="input-group mt-3">
									<button class="btn btn-primary btn-block" type="submit" id="btnLook_pw">
										<i class="fa fa-search"></i> 비밀번호 찾기
									</button>
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