<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
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
	<div>
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
	</div>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>