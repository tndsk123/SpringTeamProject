<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<style type="text/css">
.jumbotron  div>p {
	margin-bottom: 0;
}
.account-title {
	color: #000;
	font-weight: 700;
	font-size: 25px;
}
.accountHelpmessage-Title {
	color: #000;
	font-weight: 400;
	font-size: 20px;
}
.account-certification {
	font-size: 15px;
	color: #808080;
}
.account-namecertification {
	font-size: 13px;
	color: #ff0000;
}
.bank-certification {
	font-size: 15px;
	color: #808080;
}
label {
	font-size: 17px;
	color: #000000;
}
.bank-ok {
	width: 380px;
	margin-left: 180px;
	margin-top: 30px;
	margin-bottom: 50px;
}	
</style>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="container mt-5">
			<span class="account-title">계좌등록</span>
			<div class="row">
				<div class="jumbotron mt-3"
					style="background-color: #f2f2f2; width: 800px;">
					<div>
						<p class="accountHelpmessage-Title">은행계좌인증이 먼저 필요합니다.</p>
						<p class="account-certification">은행계좌인증 전에는 입출금이 제한됩니다.</p>
						<p class="account-certification">원활한 거래를 위해 은행계좌 인증을 실시하여
							주십시오.</p>
						<p class="account-namecertification">실명인증과 계좌인증은 필히 본인 정보를
							입력하셔야합니다.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="container mt-5">
			<form action="">
				<span class="bank-certification">은행계좌 인증 : </span>
				<div class="row justify-content-start">
					<div class="form-group row mt-5">
						<label for="full_name" class="col-md col-form-label text-md-right">예금주
							: </label>
						<div class="col-md-8">
							<input type="text" id="full_name" class="form-control"
								name="full-name" size="60">
						</div>
					</div>
				</div>
				<div class="row justify-content-start">
					<div class="form-group row mt-3">
						<label for="full_name" class="col-md col-form-label text-md-right">은행명
							: </label>
						<div class="col-md-8">
							<input type="text" id="full_name" class="form-control"
								name="full-name" size="60" placeholder="은행명을 입력해주세요.">
						</div>
					</div>
				</div>
				<div class="row justify-content-start">
					<div class="form-group row mt-3">
						<label for="full_name" class="col-md col-form-label text-md-right"
							style="margin-left: -15px;">계좌번호 : </label>
						<div class="col-md-8">
							<input type="text" id="full_name" class="form-control"
								name="full-name" size="60">
						</div>
					</div>
				</div>
				<a href="${path}/page/accountcomplete.do"
					class="btn btn-primary bank-ok">등록</a>
			</form>
		</div>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>