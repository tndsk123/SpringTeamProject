<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU │ 채권</title>
<%@ include file="../../include/header.jsp"%>
</head>
<body>
	<%@ include file="../../include/frame/site-header.jsp"%>
	<%@ include file="../../include/frame/invest_nav.jsp"%>
	<section class="container bond-subject">
		<h2>채권 둘러보기</h2>
		<p>매력적인 중소기업 채권에 투자하세요. 현명한 분산 투자는 은행에서 얻을 수 없는 높은 수익을 기대할 수 있습니다.</p>
	</section>
	<section class="container bond-comming-soon"></section>
	<section class="container hot-bond-project">
		<div>
			<div class="subject">
				<h3>인기 프로젝트</h3>
			</div>
			<div class="row contents">
				<div class="col-lg-3">
					<a href="#">
						<div class="row align-items-center">
							<div class="col-lg-12 col-sm-4 col-12 hot-project-thumb">
								<img src="${path}/images/portfolio-img1.jpg">
							</div>
							<div class="col-lg-12 col-sm-8 col-12 summary">
								<p><em class="state">진행 중</em><span class="category">채권</span><span class="sub-category">농축산어업</span></p>
								<p>헬스케어 투자ㅣ항균,항바이러스 효과를 갖는 발아관련 아이템</p>
								<div>
									<strong class="percentage">349%</strong><span class="sum">175,150,000원</span>
								</div>
								<p><span class="company">농업회사법인 채권회사 그린</span><span class="date">11일 남음</span></p>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-3">
					<a href="#">
						<div class="row align-items-center">
							<div class="col-lg-12 col-sm-4 col-12 hot-project-thumb">
								<img src="${path}/images/portfolio-img1.jpg">
							</div>
							<div class="col-lg-12 col-sm-8 col-12 summary">
								<p><em class="state">진행 중</em><span class="category">채권</span><span class="sub-category">농축산어업</span></p>
								<p>헬스케어 투자ㅣ항균,항바이러스 효과를 갖는 발아관련 아이템</p>
								<div>
									<strong class="percentage">349%</strong><span class="sum">175,150,000원</span>
								</div>
								<p><span class="company">농업회사법인 채권회사 그린</span><span class="date">11일 남음</span></p>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-3">
					<a href="#">
						<div class="row align-items-center">
							<div class="col-lg-12 col-sm-4 col-12 hot-project-thumb">
								<img src="${path}/images/portfolio-img1.jpg">
							</div>
							<div class="col-lg-12 col-sm-8 col-12 summary">
								<p><em class="state">진행 중</em><span class="category">채권</span><span class="sub-category">농축산어업</span></p>
								<p>헬스케어 투자ㅣ항균,항바이러스 효과를 갖는 발아관련 아이템</p>
								<div>
									<strong class="percentage">349%</strong><span class="sum">175,150,000원</span>
								</div>
								<p><span class="company">농업회사법인 채권회사 그린</span><span class="date">11일 남음</span></p>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-3">
					<a href="#">
						<div class="row align-items-center">
							<div class="col-lg-12 col-sm-4 col-12 hot-project-thumb">
								<img src="${path}/images/portfolio-img1.jpg">
							</div>
							<div class="col-lg-12 col-sm-8 col-12 summary">
								<p><em class="state">진행 중</em><span class="category">채권</span><span class="sub-category">농축산어업</span></p>
								<p>헬스케어 투자ㅣ항균,항바이러스 효과를 갖는 발아관련 아이템</p>
								<div>
									<strong class="percentage">349%</strong><span class="sum">175,150,000원</span>
								</div>
								<p><span class="company">농업회사법인 채권회사 그린</span><span class="date">11일 남음</span></p>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>
	<section class="container search-menu">
		<div class="row justify-content-center">
			<a href="#" class="m-1 menu">
				<div>
					<img src="${path}/images/invest/menu/invest.jpg" class="rounded-circle">
				</div>
				<span>전체보기</span>
			</a>
			<a href="#" class="m-1 menu">
				<div>
					<img src="${path}/images/invest/menu/fab.jpg" class="rounded-circle">
				</div>
				<span>F&B Local</span>
			</a>
			<a href="#" class="m-1 menu">
				<div>
					<img src="${path}/images/invest/menu/lifestyle.jpg" class="rounded-circle">
				</div>
				<span>라이프 스타일</span>
			</a>
			<a href="#" class="m-1 menu">
				<div>
					<img src="${path}/images/invest/menu/wellness.jpg" class="rounded-circle">
				</div>
				<span>웰니스</span>
			</a>
			<a href="#" class="m-1 menu">
				<div>
					<img src="${path}/images/invest/menu/solution.jpg" class="rounded-circle">
				</div>
				<span>솔루션</span>
			</a>
		</div>
		<article>
			<div class="row justify-content-md-between search-menu-subject">
				<h3>전체보기</h3>
				<div class="d-flex">
					<form class="" action="#">
						<label for="search">
							<input class="form-control" id="search" type="search" placeholder="검색">
							<button type="submit" class="" aria-label="검색">
								<i class="fas fa-search"></i>
							</button>
						</label>
					</form>
					<label for="viewType">select name</label>
					<select name="viewType" class="form-control">
						<option value="">전체</option>
						<option value="P">진행중</option>
						<option value="C">종료된</option>
					</select>
					<label for="order">select name</label>
					<select name="order" class="form-control">
						<option value="recommend">추천순</option>
						<option value="popluar">인기순</option>
						<option value="amount">모금액순</option>
						<option value="recent">최신순</option>
						<option value="closing">마감임박순</option>
					</select>
				</div>
			</div>
		</article>
	</section>



	<%@ include file="../../include/frame/site-footer.jsp"%>
</body>
</html>