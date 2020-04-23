<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
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
		  					<span class="second-tier">쿠폰이 없습니다.</span>
		  					<a href="#">쿠폰 이벤트 확인</a>
		  				</c:when>
		  				<c:otherwise>
		  					<span class="second-tier">${dto.coupon_chk}장</span>
		  					<a href="#">쿠폰함보기</a>
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
          <form method="post" name="form1" action="${path}/user/update_user.do">
          <div class="row align-items-center">
            <div class="col mt-4">
              <input type="text" class="form-control" placeholder="아이디" id="userid" name="userid" value="${dto.userid}">
            </div>
          </div>
          <div class="row align-items-center mt-4">
            <div class="col">
              <input type="password" class="form-control" placeholder="비밀번호" id="passwd" name="passwd">
            </div>
          </div>
          <div class="row align-items-center mt-4">
            <div class="col">
              <input type="text" class="form-control" placeholder="핸드폰" id="hp" name="hp" value="${dto.hp}">
            </div>
          </div>
          <div class="row align-items-center mt-4">
            <div class="col">
              <input type="text" class="form-control" placeholder="이메일" id="email" name="email" value="${dto.email}">
            </div>
          </div>
          <div class="row align-items-center mt-4">
            <div class="col-md-4">
              <input type="text" class="form-control" placeholder="우편번호" id="adress1" name="adress1" value="${dto.address1}">
            </div>
            <div class="col-md-8">
            	<input type="text" class="form-control" placeholder="주소" id="adress2" name="adress2" value="${dto.address2}">             
            </div>
          </div>
          <div class="row align-items-center mt-4">
            <div class="col-md-8">
              <input type="text" class="form-control" placeholder="상세주소" id="adress3" name="adress3" value="${dto.address3}">
            </div>
            <div class="col-md-4">
              <button class="btn btn-info">우편번호 찾기</button>
            </div>
          </div>
		  		<div class="row align-items-center mt-4">
            <div class="col">

              <input type="date" class="form-control" placeholder="YYYY-MM-DD" id="birth_date" name="birth_date"
               value="">
            </div>
          </div>
          <div class="row justify-content-start mt-3">
            <div class="col-md-12 text-center">
              <button class="btn btn-primary mt-3 mb-4">정보수정</button>
            </div>
          </div>
          </form>
        </div>
      </div>
    </div>

	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>