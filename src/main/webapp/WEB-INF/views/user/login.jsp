<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" href="${path}/include/css/login.css">
<script>
$(function(){
	$("#btnLogin").click(function(){
		var userid=$("#userid").val(); //태그의 value 속성값
		var passwd=$("#passwd").val();
		if(userid==""){
			alert("아이디를 입력하세요.");
			$("#userid").focus(); //입력 포커스 이동
			return; //함수 종료
		}
		if(passwd==""){
			alert("비밀번호를 입력하세요.");
			$("#passwd").focus();
			return;
		}
		if($("#admin").prop("checked")){
			document.form1.action="${path}/admin/login_check.do";
			document.form1.submit();
		}else{
			document.form1.action="${path}/user/login_check.do";
			document.form1.submit();
		}
	});
});
</script>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div id="logreg-forms">
		<form class="form-signin" method="post" name="form1">
			<h1 class="h3 mb-3 font-weight-normal" style="text-align: center">로그인</h1>
			<div class="input-group">
				<input type="text" id="userid" name="userid" class="form-control" placeholder="아이디" >
			</div>

			<div class="input-group">
				<input type="password" id="passwd" name="passwd" class="form-control" placeholder="비밀번호" >
			</div>

			<div class="input-group">
				<button class="btn btn-md btn-rounded btn-block form-control submit" type="submit" id="btnLogin">
					<i class="fa fa-sign-in-alt"></i>로그인
				</button>
			</div>
			<div class="input-group mt-3" style="text-align: center;">
				<a href="${path}/user/looking_for.do">아이디/비밀번호 찾기</a>
			</div>
			<hr>
			<c:if test="${message == 'error' }">
				<div class="input-group mb-3" style="color:red;">
					아이디 또는 비밀번호가 일치하지 않습니다.
				</div>
			</c:if>
			<a href="${path}/user/join.do">
				<button class="btn btn-primary btn-block" type="button" id="btn-signup">
					<i class="fa fa-user-plus"></i> 회원가입
				</button>
			</a>
		</form>
	</div>
	<%-- <div>
		<h2>로그인</h2>
<form name="form1" method="post">
<table border="1">
	<tr>
		<td>아이디</td>
		<td><input name="userid" id="userid" value="${userid}"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="passwd" id="passwd"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">관리자로그인<input type="radio" name="admin" id="admin"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="button" id="btnLogin" value="로그인">
			<input type="button" id="btnJoin" value="회원가입" onclick="location.href='${path}/user/join.do'">
			<c:if test="${param.message == 'nologin' }">
				<div style="color:red;">
					로그인 하신 후 사용하세요.
				</div>				
			</c:if>
			<c:if test="${message == 'error' }">
				<div style="color:red;">
					아이디 또는 비밀번호가 일치하지 않습니다.
				</div>
			</c:if>
			
		</td>
	</tr>
</table>
</form> 
	</div> --%>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>