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

.my-coupon {
	border-bottom: 2px solid;
}

.mycouponpagetitle{
	color: rgba(0,0,0,.84);
    font-size: 21px;
    font-weight: 700;
}

.mycouponpagetitle > strong{
	color : #ff0000;
}

.mycouponList {
	border: none;
	background: none;
	font-size: 17px;
    font-weight: 300;
    color: #ff4d4d;
}

.mycouponList-container {
	border-bottom: 1px solid rgba(0,0,0,.08);
	padding: 12px 0;
}

.couponList-message {
	color: rgba(0,0,0,.84);
    font-size: 15px;
}

.jumbotron  {
	margin-top: 200px;
	 background-color:#8A2BE2;
	
}


.jumbotron div > p {
	margin-bottom: 0;
	font-size: 13px;

}

.jumbotron div > .couponHelpmessage-Title {
 	margin-bottom: 8px;
 	color: #44484b;
    font-size: 20px;
    font-weight: 700;
}
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
				<a href="#" class="my-coupon">나의 쿠폰</a>
			</div>
			<div class="col-sm-2">
				<a href="${path}/user/coupon_box.do">쿠폰존</a>
			</div>
		</div>
		<div class="row mt-5">
			<span class="mycouponpagetitle">현재 사용가능 쿠폰 <strong>${count}장</strong>
			</span>
		</div>
		<div class="row mt-5 mycouponList-container">
			<button class="mycouponList">
				<i class="fa fa-plus-circle"></i> 쿠폰 등록하기
			</button>
		</div>
		<div class="row justify-content-center mt-5">
			<c:choose>
				<c:when test="${count == 0}">
					<span class="couponList-message">사용 가능한 쿠폰이 없습니다.</span>			
				</c:when>
				<c:otherwise>
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
										<fmt:formatDate value="${var.validity}" pattern="yyyy-MM-dd" />
										까지 사용가능
									</p>
								</div>
							</div>
							<div class="col-md-2 col-sm-2">
								<div class="jumbotron containerDownloaditem"
									style="background-color: #ff4d4d;">
									<h1>
										<i class="fa fa-download"></i>
									</h1>
									<button class="CouponDwonload-btn"
										onclick="delete_coupon(${var.cou_no})">쿠폰삭제</button>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="row">
			<div class="jumbotron" style="background-color: #ffffff;">
				<div>
					<p class="couponHelpmessage-Title">IF you 쿠폰 이용안내</p>
					<p>1.쿠폰은 다른 쿠폰과 중복하여 사용할 수 없습니다.</p>
					<p>2.쿠폰의 구체적인 사용 방법은 발행되는 쿠폰 별 사용 조건에 따라 다를 수 있습니다.</p>
					<p>3.쿠폰의 적용에 따라 지급되는 페이백은 최종 투자자로 배정 완료 되면 2주 내로 지급됩니다.</p>
					<p>4.최종 배정금액이 쿠폰 사용 조건의 최소 투자금액보다 작을 경우 페이백 지급대상에서 제외되며 해당 쿠폰은
						반환됩니다. 단,</p>
					<p>쿠폰의 유효기간이 배정일 이전인 경우에는 자동 소멸됩니다.</p>
					<p>5.최종 배정 금액이 최소 투자금액보다 작거나 미배정된 경우 페이백 지급대상에서 제외되며 쿠폰은 반환됩니다.
						단, 쿠폰의 유</p>
					<p>효기간이 배정일 이전인 경우에는 자동 소멸됩니다.</p>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>