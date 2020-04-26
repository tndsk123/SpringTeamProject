<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="${path}/include/js/user_update.js"></script>
<style type="text/css">
.usertitle {
	font-size: 30px;
	font-weight: 700;
	color: #000000;
	margin-left: 10px;
}

.btn-update-photo {
	font-size: 13px;
	color: #4a4a4a;
	border: none;
	background: none;
	line-height: 13px;
	border-bottom: 1px solid #4a4a4a;
}

.profile-img
{
    width: 96px;
    height: 96px;
    margin: 0 auto 10px;
    display: block;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
}

.tier {
	color: #000000;
	font-size: 16px;

}

.second-tier {
	color: #804000;
	font-size: 20px;
	font-weight: 700;
}

.btn-tier-up {
	font-size: 13px;
	color: #4a4a4a;
	border: none;
	background: none;
}

.Enrollment {
	float: right;
}
.none-Enrollment {
	color: #4a4a4a;
	font-size: 17px;
}

.none-Enrollment strong {
	font-weight: 700;
	color: #cc3000;
}
</style>
<c:if test="${message == 'error'}">
<script type="text/javascript">
  alert("비밀번호 틀렸음");
</script>
</c:if>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span>
				<strong class="text-black">마이페이지</strong>
			</div>
		</div>
	</div>
	
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-12 col-md-8 col-lg-8 col-xl-6">
          <div class="row">
            <div class="col text-center title mt-5">
              <h1><i class="fa fa-user"></i><span class="usertitle">내 정보</span></h1>
            </div>
          </div>
          <div class="row mt-5">
              <img class="profile-img" src="${path}/images/portfolio-img1.jpg" alt="">
          </div>
          <div class="row justify-content-center mt-3">
              	<button class="btn-update-photo">프로필 사진 등록</button>
          </div>
		  <div class="row justify-content-center mt-5">
		  	<div class="jumbotron shadow rounded" style="width: 1000px; text-align: center;">
		  		<div class="row">
		  		<div class="col-sm" style="border-right: 1px solid #cccccc;">
		  			<p class="tier">등급</p>
		  			<p><span class="second-tier">${dto.grade}등급</span></p>
		  			<a href="#">등급상향 요청하기</a>
		  		</div>
		  		<div class="col-sm" style="border-right: 1px solid #cccccc;">
		  			<p class="tier">쿠폰</p>
		  			<c:choose>
		  				<c:when test="${dto.coupon_chk == 0}">
		  					<p><span class="second-tier">쿠폰이 없습니다.</span></p>
		  					<a href="${path}/coupon/coupon_box.do">쿠폰 이벤트 확인</a>
		  				</c:when>
		  				<c:otherwise>
		  					<p><span class="second-tier">${dto.coupon_chk}장</span></p>
		  					<a href="${path}/coupon/my_coupon.do">쿠폰함보기</a>
		  				</c:otherwise>
		  			</c:choose>
		  		</div>
		  		<div class="col-sm">
		  			<p class="tier">좋아요<i class="fa fa-heart"></i></p>
		  			<p><span class="second-tier">3</span></p>
		  			<a href="#">좋아요한 프로젝트</a>
		  		</div>
		  	</div>
		   </div>
		  </div>
		  <div class="row align-items-center mt-5">
            <div class="col">
            	<c:choose>
		  					<c:when test="${dto.account_chk == 0}">
		  						<span class="none-Enrollment">아직 <strong>계좌등록</strong>을 안하셨나요?</span><a href="#" class="Enrollment"> <i class="fa fa-angle-right"></i> 지금당장하기</a>
		  					</c:when>
		  					<c:otherwise>
		  						<span class="none-Enrollment">${dto.account_chk}개의 계좌가 있습니다.</span><a href="#" class="Enrollment"> <i class="fa fa-angle-right"></i>계좌확인</a>
		  					</c:otherwise>
		  				</c:choose>             
            </div>
          </div>
          <div class="row align-items-center mt-5 mb-4">
            <div class="col">
            	<c:choose>
		  					<c:when test="${dto.account_chk == 0}">
		  						<span class="none-Enrollment">아직 <strong>회사등록</strong>을 안하셨나요?</span><a href="#" class="Enrollment"> <i class="fa fa-angle-right"></i> 지금당장하기</a>
		  					</c:when>
		  					<c:otherwise>
		  						<span class="none-Enrollment">등록된 회사가 있습니다.</span><a href="#" class="Enrollment"> <i class="fa fa-angle-right"></i>회사정보확인</a>
		  					</c:otherwise>
		  				</c:choose>             
            </div>
          </div>
          <div class="row align-items-center mt-5 mb-4">
            <div class="col">
              <span class="none-Enrollment">※<strong>개인정보수정</strong></span>
            </div>
          </div>
          <form method="post" name="form1" id="form1" action="${path}/user/update_user.do">
          <div class="row align-items-center">
            <div class="col mt-4">
            	<label for="userid">아이디</label>
              <input type="text" class="form-control" id="userid" name="userid" value="${dto.userid}" readonly>
            </div>
          </div>
          <div class="row align-items-center">
            <div class="col mt-4">
            	<label for="username">이름</label>
              <input type="text" class="form-control" id="username" name="username" value="${dto.username}" readonly>
            </div>
          </div>
          <div class="row align-items-center mt-4">
            <div class="col">
            	<label for="hp">핸드폰</label>
              <input type="text" class="form-control" placeholder="'-'빼고 입력해주세요" id="hp" name="hp" value="${dto.hp}">
            </div>
          </div>
          <div class="row align-items-center mt-4">
            <div class="col">
            	<label for="email">이메일</label>
              <input type="text" class="form-control" placeholder="이메일" id="email" name="email" value="${dto.email}">
            </div>
          </div>
          <div class="row align-items-center mt-4">
            <div class="col-md-4">
            	<label for="address1">우편번호</label>
              <input type="text" class="form-control" id="address1" name="address1" value="${dto.address1}">
            </div>
            <div class="col-md-8">
            	<label for="address2">주소</label>
            	<input type="text" class="form-control" id="address2" name="address2" value="${dto.address2}">             
            </div>
          </div>
          <div class="row align-items-center mt-4">
            <div class="col-md-8">
            	<label for="address3">상세주소</label>
              <input type="text" class="form-control" placeholder="상세주소" id="address3" name="address3" value="${dto.address3}">
            </div>
            <div class="col-md-4">
            	<label for="zip">.</label>
              <input type="button" class="form-control btn btn-info" onclick="daumZipCode()" value="우편번호 찾기" id="zip">
            </div>
          </div>
		  		<div class="row align-items-center mt-4">
            <div class="col">
							<label for="birth_date">생년월일</label>
              <input type="text" class="form-control" id="birth_date" name="birth_date"
               value="${dto.birth_date}" readonly>
            </div>
          </div>
          <div class="row justify-content-start mt-3">
            <div class="col-md-12 text-center">
              <button class="btn btn-primary mt-3 mb-4">정보수정</button>
              <button type="button" class="btn btn-danger mt-3 mb-4 ml-3" data-toggle="modal" data-target="#myModal">비밀번호수정하러가기</button>
            </div>
          </div>
          </form>
        </div>
      </div>
    </div>
	<div class="modal" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">비밀번호찾기</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<form method="post" name="pw_form" action="${path}/user/chk_passwd.do">
				<div class="modal-body">
					<div class="container">
            	<label for="passwd">비밀번호</label>
              <input type="password" class="form-control" id="passwd" name="passwd">
           </div>           
				</div>
				<div class="modal-footer">
				<button type="submit" class="btn btn-info">확인</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
				</div>
				</form>
			</div>
		</div>
	</div>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>