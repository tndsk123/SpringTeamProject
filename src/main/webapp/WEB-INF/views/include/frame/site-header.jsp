<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header>
	<div class="top_navigation">
		<div class="container">
			<div class="row">
				<ul class="col-9 nav contact_list">
					<li><span><i class="far fa-envelope"></i></span> <a href="mailto:info@ifu.com">info@ifu.com</a></li>
					<li><span><i class="fas fa-phone"></i></span> <span>02-1234-5678</span></li>
				</ul>
				<ul class="col-3 nav justify-content-end social_list">
					<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
					<li><a href="#"><i class="fab fa-twitter"></i></a></li>
					<li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
					<li><a href="#"><i class="fab fa-instagram"></i></a></li>
				</ul>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-default navbar-expand-sm" data-toggle="sticky-onscroll">
		<div class="container">
			<a class="navbar-brand" href="${path}"><i class="fa fa-magnet fa-spin"></i> IFU</a>
			<button class="navbar-toggler custom-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="#">주식</a></li>
					<li class="nav-item"><a class="nav-link" href="#">채권</a></li>
					<li class="nav-item"><a class="nav-link" href="#">프로젝트 오픈신청</a></li>
					<li class="nav-item"><a class="nav-link" href="#">IFU</a></li>
					<c:choose>
								<c:when test="${sessionScope.userid == null }">
									 <li class="nav-item"><a class="nav-link" href="${path}/user/login.do">로그인</a></li>
									 <li class="nav-item"><a class="nav-link" href="${path}/user/join.do">회원가입</a></li>
								</c:when>
								<c:otherwise>
									 <li class="nav-item"><a class="nav-link" href="${path}/user/mypage.do">마이페이지</a></li>
									 <li class="nav-item"><a class="nav-link" href="${path}/user/logout.do">로그아웃</a></li>
								</c:otherwise>
					</c:choose>								
				</ul>
			</div>
		</div>
	</nav>
</header>