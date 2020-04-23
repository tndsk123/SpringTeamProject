<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="${path}/include/js/join.js"></script>
</head>
<body>
<%@ include file="../include/frame/site-header.jsp"%>
<div class="bg-light py-3">
    <div class="container">
       <div class="row">
          <div class="col-md-12 mb-0"><a href="${path}/user/join.do">회원가입</a><span class="mx-2 mb-0">/</span><strong class="text-black">이용약관</strong><span class="mx-2 mb-0">/</span><strong class="text-black">정보입력</strong></div>
       </div>
    </div>
</div>
<div class="container">
	<div class="row justify-content-center">
		<div class="col-12 col-md-8 col-lg-8 col-xl-6">
			<div class="row">
				<i class="fa fa-magnet fa-spin"></i> IFU 회원가입
			</div>
			<form method="post" name="form1" action="${path}/user/join_user.do">
			<div class="row-align-items-center">
				 <div class="form-group">
         		<em style="color:red">*</em>
         		<label for="user_id" class="control-label">아이디</label>
         		<input type="text" class="form-control" id="user_id" name="userid" placeholder="ID">
         		<div class="eheck_font" id="id_check"></div>
       	 </div>
			 </div>
			 <div class="row-align-items-center">
				 <div class="form-group">
         		<em style="color:red">*</em>
         		<label for="user_id" class="control-label">비밀번호</label>
         		<input type="password" class="form-control" id="user_pw" name="passwd">
         		<div class="eheck_font" id="pw_check"></div>
       	 </div>
			 </div>
			 <div class="row-align-items-center">
				 <div class="form-group">
         		<em style="color:red">*</em>
         		<label for="user_id" class="control-label">비밀번호 재입력</label>
         		<input type="password" class="form-control" id="user_pw2">
         		<div class="eheck_font" id="pw2_check"></div>
       	 </div>
			 </div>
			 <div class="row-align-items-center">
				 <div class="form-group">
         		<em style="color:red">*</em>
         		<label for="user_id" class="control-label">이름</label>
         		<input type="text" class="form-control" id="user_name" name="username" placeholder="이름">
         		<div class="eheck_font" id="name_check"></div>
       	 </div>
			 </div>
			 <div class="row-align-items-center">
				 <div class="form-group">
         		<em style="color:red">*</em>
         		<label for="user_id" class="control-label">성별</label><br>
         		<input type="radio" id="male" name="gender" value="남성">Male
         		<input type="radio" class="ml-4" id="female" name="gender" value="여성">FeMale
       	 </div>
			 </div>
			 <div class="row-align-items-center">
				 <div class="form-group">
         		<em style="color:red">*</em>
         		<label for="user_id" class="control-label">생년월일</label>
         		<input type="date" class="form-control" id="user_birth" name="birth_date">
         		<div class="eheck_font" id="birth_check"></div>
       	 </div>
			 </div>
			 <div class="row-align-items-center">
				 <div class="form-group">
         		<em style="color:red">*</em>
         		<label for="user_id" class="control-label">핸드폰</label>
         		<input type="text" class="form-control" id="user_phone" name="hp" placeholder="핸드폰">
       	 </div>
			 </div>
			 <div class="row-align-items-center">
				 <div class="form-group">
         		<em style="color:red">*</em>
         		<label for="user_id" class="control-label">이메일</label>
         		<input type="email" class="form-control" id="user_email" name="email" placeholder="E-mail">
       	 </div>
			 </div>
			 <div class="row-align-items-center">
				 <div class="form-group">
         		<em style="color:red">*</em>
         		<label for="user_id" class="control-label">주소</label>
         		<div class="row">
         			<div class="col-4 mb-2">
      					<input type="text" class="form-control" id="user_address" name="address1" readonly>
    					</div>
    					<div class="col-8 mb-2">
      					<input type="text" class="form-control" id="user_detailaddress" name="address2" readonly>
   					 	</div>
         		</div>
         		<div class="row">
         			<div class="col-8 mb-2">
      					<input type="text" class="form-control" id="address3" name="address3" placeholder="상세주소입력">
    					</div>
    					<div class="col-4 mb-2">
      					<input type="button" class="form-control" onclick="daumZipCode()" value="우편번호 찾기">
   					 	</div>
         		</div>        		         		
       	 </div>
			 </div>
			 <div class="row-align-items-center">
			 		<div class="form-group">
			 			<button type="submit" class="form-control btn btn-primary">회 원 가 입</button>
			 		</div>
			 </div>
			 </form>
		</div>
	</div>
</div>
<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>