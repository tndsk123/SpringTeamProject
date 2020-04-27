<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU │ 주식</title>
<%@ include file="../../../include/header.jsp"%>
</head>
<body>
	<%@ include file="../../../include/frame/site-header.jsp"%>
	<%@ include file="../../../include/frame/invest_nav.jsp"%>
	<section class="product-details">
		<div class="container">
			<section class="pd-subject">
				<div class="">
					<em class="stock-btn">주식</em>상환전환우선주<span></span>
					<h1 class="text-center">헬스케어 투자ㅣ항균,항바이러스 효과를 갖는 발아관련 아이템</h1>
				</div>
			</section>
			<section class="row pd-view">
				<section class="col-md-6">
					<!-- Swiper -->
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<img src="${path}/include/images/portfolio-img1.jpg">
							</div>
							<div class="swiper-slide">
								<img src="${path}/include/images/portfolio-img1.jpg">
							</div>
							<div class="swiper-slide">
								<img src="${path}/include/images/portfolio-img1.jpg">
							</div>
						</div>
						<!-- Add Pagination -->
						<div class="swiper-pagination"></div>
					</div>
				</section>
				<section class="col-md-6">
					<div class="product-details-content">
						<div>
							<p><span><strong>317,674,874</strong>원 달성</span><span>목표금액 358,307,180원<span>89%</span></span></p>
							<div class="progress">
								<div class="progress-bar" style="width: 89%"></div>
							</div>
							<p><span><strong>6</strong>일 남음</span><span>2020.04.28 15:00 마감</span></p>
							<p><em>증액예정</em><span>모집상황에 따라 최대&nbsp;499,999,324원으로 증액 예정입니다.</span></p>
							<div>
								<button type="button">지금 투자하기</button>
								<button type="button" title="좋아요">
									<i class="far fa-heart" aria-hidden="true"></i><i class="fas fa-heart" aria-hidden="true"></i><span>1080</span>
								</button>
							</div>
						</div>
						<div class="row">
							<div class="col-7 pd-share">
								<h2>공유</h2>
								<button type="button" title="페이스북 공유">
									<i class="fab fa-facebook-f"></i>
								</button>
								<button type="button" title="인스타그램 공유">
									<i class="fab fa-instagram"></i>
								</button>
								<button type="button" title="트위터 공유">
									<i class="fab fa-twitter"></i>
								</button>
							</div>
							<div class="col pd-categories">
								<h5 class="pd-sub-title">Categories</h5>
								<ul>
									<li><a href="#">기술</a></li>
									<li><a href="#">물류</a></li>
								</ul>
							</div>
						</div>
					</div>
				</section>
			</section>
		</div>
		<div class="container">
			<section class="row">
				<div class="card col-3">
					<img class="card-img-top" src="${path}/include/images/portfolio-img1.jpg">회사 프로필 사진
					<div class="card-body">
						<h5 class="card-title">회사이름</h5>
						<p class="card-text">간단한 회사 설명</p>
						<a href="#" class=" stretched-link">See Profile</a>
						<div class="stats">
							<i class="far fa-eye"></i> 1347 <i class="far fa-comment"></i> 12
						</div>
					</div>
				</div>
			</section>
		</div>
	</section>
	<section class="product-explain">
		<div class="container">
			<div class="classic-tabs">
				<ul class="nav tabs nav-justified row" role="tablist">
					<li class="nav-item"><a class="nav-link show active" data-toggle="tab" href="#info" aria-controls="info" aria-selected="true">핵심정보</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#risk" aria-controls="warn" aria-selected="false">투자위험</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#manual" aria-controls="manual" aria-selected="false">투자설명서</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#news" aria-controls="news" aria-selected="false">
							새소식 <span class="new">10</span>
						</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#feedback" aria-controls="feedback" aria-selected="false">
							피드백 <span class="new">10</span>
						</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#investor" aria-controls="investor" aria-selected="false">
							투자자 <span class="new">200</span>
						</a></li>
				</ul>
				<div class="tab-content">
					<%@ include file="../../stock/detail/key_info_tab.jsp"%>
					<%@ include file="../../stock/detail/risk_tab.jsp"%>
					<div class="tab-pane fade" id="manual" role="tabpanel" aria-labelledby="manual-tab">
						<section>
							<h5><span>1</span> review for <span>Fantasy T-shirt</span></h5>
							<div class="media mt-3 mb-4">
								<img class="d-flex mr-3 z-depth-1" src="https://mdbootstrap.com/img/Photos/Others/placeholder1.jpg" width="62" alt="Generic placeholder image">
								<div class="media-body">
									<div class="d-flex justify-content-between">
										<p class="mt-1 mb-2"><strong>Marthasteward </strong> <span>– </span><span>January 28, 2020</span></p>
										<ul class="rating mb-0">
											<li><i class="fas fa-star fa-sm text-primary"></i></li>
											<li><i class="fas fa-star fa-sm text-primary"></i></li>
											<li><i class="fas fa-star fa-sm text-primary"></i></li>
											<li><i class="fas fa-star fa-sm text-primary"></i></li>
											<li><i class="far fa-star fa-sm text-primary"></i></li>
										</ul>
									</div>
									<p class="mb-0">Nice one, love it!</p>
								</div>
							</div>
							<hr>
							<h5 class="mt-4">Add a review</h5>
							<p>Your email address will not be published.</p>
							<div class="my-3">
								<ul class="rating mb-0">
									<li><a href="#!">
											<i class="fas fa-star fa-sm text-primary"></i>
										</a></li>
									<li><a href="#!">
											<i class="fas fa-star fa-sm text-primary"></i>
										</a></li>
									<li><a href="#!">
											<i class="fas fa-star fa-sm text-primary"></i>
										</a></li>
									<li><a href="#!">
											<i class="fas fa-star fa-sm text-primary"></i>
										</a></li>
									<li><a href="#!">
											<i class="far fa-star fa-sm text-primary"></i>
										</a></li>
								</ul>
							</div>
							<div>
								<!-- Your review -->
								<div class="md-form md-outline">
									<textarea id="form76" class="md-textarea form-control pr-6" rows="4"></textarea>
									<label for="form76">Your review</label>
								</div>
								<!-- Name -->
								<div class="md-form md-outline">
									<input type="text" id="form75" class="form-control pr-6"> <label for="form75">Name</label>
								</div>
								<!-- Email -->
								<div class="md-form md-outline">
									<input type="email" id="form77" class="form-control pr-6"> <label for="form77">Email</label>
								</div>
								<div class="text-right pb-2">
									<button type="button" class="btn btn-primary waves-effect waves-light">Add a review</button>
								</div>
							</div>
						</section>
					</div>
					<%@ include file="../../stock/detail/news_tab.jsp"%>
					<div class="tab-pane fade" id="feedback" role="tabpanel" aria-labelledby="feedback-tab">
						<section>
							<h5>Additional Information</h5>
							<table class="table table-striped table-bordered mt-3">
								<thead>
									<tr>
										<th scope="row" class="w-150 dark-grey-text h6">Weight</th>
										<td>
											<em>0.3 kg</em>
										</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" class="w-150 dark-grey-text h6">Dimensions</th>
										<td>
											<em>50 × 60 cm</em>
										</td>
									</tr>
								</tbody>
							</table>
						</section>
					</div>
					<%@ include file="../../stock/detail/investor_tab.jsp"%>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../../../include/frame/site-footer.jsp"%>
</body>
</html>