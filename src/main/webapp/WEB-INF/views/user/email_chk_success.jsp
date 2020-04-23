<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<script type="text/javascript">
$(function(){
	Swal.fire({
		  title: '${userid}님',
		  text: "회원가입을 축하드립니다!\n 로그인 후 사용해주세요",
		  icon: 'success',
		  confirmButtonColor: '#3085d6',
		  confirmButtonText: '로그인',
		}).then((result) => {
		  if (result.value) {
		   	location.href='${path}/user/login.do';
		  }
		});
});
</script>
</head>
<body>
</body>
</html>