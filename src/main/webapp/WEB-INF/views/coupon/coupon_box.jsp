<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<style type="text/css">
.coupontitle {
	font-size: 35px;
	font-weight: 700;
	color: #000000;
}

.my-couponzone {
	border-bottom: 2px solid;
}

.coupon {
	padding-left: 500px;
	margin: 0 auto;
}

.jumbotron>p {
	margin-bottom: 0;
}

.jumbotron {
	box-shadow: 0 2px 30px rgba(0, 0, 0, .15);
	color: rgba(0, 0, 0, .84);
	font-size: 14px;
	font-weight: 400;
	box-sizing: border-box;
}

.CouponDownloadItem-type {
	color: #000;
	font-weight: 500;
}

.CouponDownloadItem-amount {
	color: #3359cc;
	font-size: 21px;
	font-weight: 700;
}

.Couponitemtitle {
	margin: 0;
	color: #000;
	font-weight: 500;
}

.CouponDwonload-btn {
	border: none;
	background: none;
	font-size: 30px;
	font-weight: 700;
}

.funingname {
	padding-bottom: 5px;
	font-size: 20px; color : #000;
	font-weight: 700;
	color: #000;
}

.fundingcouponmoney {
	margin: 4px 0 8px;
	line-height: 18px;
	color: #3359cc;
	font-size: 21px;
	font-weight: 700;
}

.fa-download {
	margin-left: 45px;
}

.couponHelpMessage {
	box-shadow: none;
}

.couponHelpMessage > .couponHelpMessage-title {
	color: #44484b;
    font-size: 17px;
    font-weight: 700;
    margin-bottom: 10px;	
}
</style>
<script type="text/javascript">
function id_check(data){
	var id=$("#user_id").val();
	if(id == null || id == ''){
		alert("로그인 후 이용가능합니다.");
	}else{
		$.ajax({
		    url: "${path}/coupon/get_coupon.do",
		    data: { cou_no : data},
		    type: "GET",
		    success: function(result){
			  }
		})
	}
	alert("쿠폰이 발급되었습니다.");
}
</script>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span>
				<strong class="text-black">쿠폰함</strong>
			</div>
		</div>
	</div>
	<div class="container">
			<div class="row mt-5">
				<h1 class="coupontitle">쿠폰</h1>
			</div>
			<div class="row mt-5">
				<div class="col-sm-2">
					<a href="${path}/coupon/my_coupon.do" class="my-coupon">나의 쿠폰</a>
				</div>
				<div class="col-sm-2">
					<a href="#" class="my-couponzone">쿠폰존
						<span>${count}</span>
					</a>
				</div>
			</div>
			<c:forEach var="var" items="${list}">
				<div class="row mt-5">
					<div class="col-md-8 col-sm-4">
						<div class="jumbotron" style="background-color: #fff;">
							<p class="funingname">${var.c_division}</p>
							<p>${var.coupon_name}</p>
							<p>${var.coupon_content}</p>
							<p class="fundingcouponmoney">
								<fmt:formatNumber value="${var.discount}" groupingUsed="true" />원
							</p>
							<p>
								<fmt:formatDate value="${var.validity}" pattern="yyyy-MM-dd" />까지 사용가능
							</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="jumbotron containerDownloaditem" style="background-color: #ff4d4d;">
							<h1>
								<i class="fa fa-download"></i>
							</h1>
							<button class="CouponDwonload-btn" onclick="id_check(${var.cou_no})">쿠폰받기</button>
							<input type="hidden" id="user_id" value="${sessionScope.userid}">
						</div>
					</div>
				</div>
			</c:forEach>		
			<div class="row mt-2">
				<div class="col-md">
					<div class="jumbotron couponHelpMessage" style="background-color: #fff;">
					<p class="couponHelpMessage-title">쿠폰 이용안내</p>
					<p>1.본 쿠폰은 다운(쿠폰 받기) 후, 사용할 수 있습니다.</p>
					<p>2.쿠폰은 펀딩 서비스 이용 시 사용할 수 있습니다.</p>
					<p>3.쿠폰은 다른 쿠폰과 중복하여 사용할 수 없습니다.</p>
					<p>4.쿠폰의 구체적인 사용 조건은 발행되는 쿠폰 별로 다를 수 있습니다.</p>
					<p>5.펀딩이 실패하거나 펀딩 예약 취소를 한 경우, 쿠폰은 반환됩니다. 단, 반환 시점에 쿠폰 유효기간이 만료된 경우 자동 소멸됩니다.</p>
					<p>6.펀딩 결제 실패인 경우에는 쿠폰이 반환되지않고, 소멸됩니다.</p>
					</div>
				</div>
			</div>
		</div>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>