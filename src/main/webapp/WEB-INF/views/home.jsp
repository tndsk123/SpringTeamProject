<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>IFYOU &mdash; 누구나 쉽게하는 투자</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="include/header.jsp"%>
<c:if test="${param.message == 'logout'}">
	<script type="text/javascript">
		alert("로그아웃 되었습니다.");
	</script>
</c:if>
<c:if test="${param.message == 'login'}">
	<script type="text/javascript">
		alert("로그인 되었습니다.");
	</script>
</c:if>
</head>
<body>
<%@ include file="include/frame/site-header.jsp"%>
	<section class="container-fluid">
		<div id="carousel" class="owl-carousel owl-theme">
			<div class="item">
				<img src="http://placehold.it/2000x400/a21010/ffffff" alt="orange tree" />
			</div>
			<div class="item">
				<img src="http://placehold.it/2000x400/1096a2/ffffff" alt="orange tree" />
			</div>
			<div class="item">
				<img src="http://placehold.it/2000x400/a28c10/ffffff" alt="orange tree" />
			</div>
		</div>
	</section>
	<section class="container hot-project">
		<div class="container">
			<div class="row">
				<div class="col-xl-7 col-md-12">
					<div class="mainpage-subject">
						<h3>이 프로젝트 어때요?</h3>
					</div>
					<div class="row">
					 <c:forEach var="row" items="${cnt_list}" begin="0" end="4">
						<div class="col-md-4">
							<a href="${path}/fund/view/${row.bno}">
								<article>
									<div class="how-project-thumb">
										<img class="img-fluid" src="${path}/img/${row.title_img}">
									</div>
									<div>
										<p>${row.title}</p>
										<p><span>${row.progress}%</span>${row.s_division}</p>
									</div>
								</article>
							</a>
						</div>
					 </c:forEach>
					</div>
				</div>
				<div class="col-xl-5 col-md-12">
					<div class="mainpage-subject">
						<h3>실시간 랭킹</h3>
					</div>
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#stock">주식</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#bond">채권</a></li>
					</ul>
					<div class="tab-content">
						<div id="stock" class="container tab-pane active">
						 <c:forEach var="row" items="${good_list}" begin="0" end="4">
							<div class="lank">
								<a href="${path}/fund/view/${row.bno}">
									<article>
										<div class="row">
											<div class="col-2 col-md-2 col-lg-2 text-center">1</div>
											<div class="col-7 col-md-8 col-lg-7 section-contents">
												<p>${row.title}[${row.project_name}]</p>
												<p><span>${row.progress}%</span>주식</p>
											</div>
											<div class="col-3 col-md-2 col-lg-3 lank-thumb">
												<img src="${path}/img/${row.title_img}" class="mx-auto d-block">
											</div>
										</div>
									</article>
								</a>
							</div>								
						 </c:forEach>
						</div>
						<div id="bond" class="container tab-pane fade">
						 <c:forEach var="row" items="${good_list}" begin="0" end="4">
							<div class="lank">
								<a href="${path}/fund/view/${row.bno}">
									<article>
										<div class="row">
											<div class="col-2 col-md-2 col-lg-2 text-center">1</div>
											<div class="col-7 col-md-8 col-lg-7 section-contents">
												<p>${row.title}[${row.project_name}]</p>
												<p><span>${row.progress}%</span>주식</p>
											</div>
											<div class="col-3 col-md-2 col-lg-3 lank-thumb">
												<img src="${path}/img/${row.title_img}" class="mx-auto d-block">
											</div>
										</div>
									</article>
								</a>
							</div>								
						 </c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="container today-open">
		<div class="container">
			<div class="d-flex justify-content-between mainpage-subject">
				<h3>주목하세요!<br>#오늘 오픈한 프로젝트</br></h3>
				<div><a href="#">&lt;12345&gt;</a></div>
			</div>
			<div class="row">
			 <c:forEach var="row" items="${support_list}" begin="0" end="5">
				<div class="col-md-4 col-sm-6">
					<a href="${path}/fund/view/${row.bno}">
						<div class="to-thumb">
							<img src="${path}/img/${row.title_img}" class="img-fluid">
							<div class="to-overlay">
								<div class="to-item">
									<h4>[${row.progress}%]${row.title}</h4>
									<small>${row.progress}% ${row.s_division}</small>
								</div>
							</div>
						</div>
					</a>
				</div>
			 </c:forEach>
		</div>
	</section>
<%@ include file="include/frame/site-footer.jsp"%>
<%--  
<h3>CntList</h3>
<div class="container">
  <div class="row">
    <c:forEach var="row" items="${cnt_list}" begin="0" end="3">
    <div class="col-xs-12 col-sm-6 col-md-3">
      <div class="box">
        <a href="${path}/fund/view/${row.bno}"><img class="img-fluid" alt="" src="${path}/img/${row.title_img}" ></a>
      </div>
      <div>
      	<c:choose>
      		<c:when test="${row.open_date > 0}">
      			<p>오픈예정중</p>
      			<p>오픈예정일 : <fmt:formatDate value="${row.start_date}" pattern="yyyy-MM-dd"/></p>
      			<p>오픈까지 ${row.open_date}일 남음</p>
      		</c:when>
      		<c:otherwise>
      			<p>${row.s_division}</p>
      			<p>${row.project_name}</p>
      			<p>${row.now_date}일 남음</p>
      			<p>${row.now_fund} 모임(진행률 ${row.progress})</p>
      		</c:otherwise>
      	</c:choose>
      </div>
    </div>
    </c:forEach>   
  </div>
</div>


<h3>GoodList</h3>
<div class="container">
  <div class="row">
    <c:forEach var="row" items="${good_list}" begin="0" end="3">
    <div class="col-xs-12 col-sm-6 col-md-3">
      <div class="box">
        <a href="${path}/fund/view/${row.bno}"><img class="img-fluid" alt="" src="${path}/img/${row.title_img}" ></a>
      </div>
      <div>
      	<p>${row.s_division}</p>
      	<p>${row.project_name}</p>
      	<p>${row.now_date}일 남음</p>
      	<p>${row.now_fund} 모임(진행률 ${row.progress})</p>
      </div>
    </div>
    </c:forEach> 
  </div>
</div>


<h3>SupportList</h3>
<div class="container">
  <div class="row">
    <c:forEach var="row" items="${support_list}" begin="0" end="2">
    <div class="col-xs-12 col-sm-4">
      <div class="box">
        <a href="${path}/fund/view/${row.bno}"><img class="img-fluid" alt="" src="${path}/img/${row.title_img}" ></a>
      </div>
      <div>
      	<p>${row.s_division}</p>
      	<p>${row.project_name}</p>
      	<p>${row.now_date}일 남음</p>
      	<p>${row.now_fund} 모임(진행률 ${row.progress})</p>
      </div>
    </div>
    </c:forEach>
  </div>
</div>

<h3>TodayList</h3>
<div class="container">
  <div class="row">
    <c:forEach var="row" items="${today_list}" begin="0" end="3">
    <div class="col-xs-12 col-sm-6 col-md-3">
      <div class="box">
        <a href="${path}/fund/view/${row.bno}"><img class="img-fluid" alt="" src="${path}/img/${row.title_img}" ></a>
      </div>
      <div>
      	<p>${row.s_division}</p>
      	<p>${row.project_name}</p>
      	<p>${row.now_date}일 남음</p>
      	<p>${row.now_fund} 모임(진행률 ${row.progress})</p>
      </div>
    </div>
    </c:forEach>
  </div>
</div> --%>
</body>
</html>
