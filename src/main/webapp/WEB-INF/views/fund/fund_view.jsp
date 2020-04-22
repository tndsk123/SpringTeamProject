<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>IFYOU &mdash; 누구나 쉽게하는 투자</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@ include file="../include/header.jsp"%>
</head>
<body>
<div class="site wrap">
	<div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0"><a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span> <a href="${path}/fund/list.do">투자</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">${list.project_name}</strong></div>
        </div>
      </div>
    </div>
    <section>
    	<div class="container">
        <div class="row">
        	<div class="col-md-6 mt-3">
        			<img class="img-fluid" alt="" src="${path}/img/${list.title_img}">
        	</div>
        	<div class="col-md-6 mt-3">
        			<h2>${list.project_name}</h2><br>
        			<p>${list.s_division}</p>
        			<p>${list.p_division}</p>
        			<p><fmt:formatNumber value="${list.now_fund}" groupingUsed="true"/>원 달성</p>
        			<p>목표금액 <fmt:formatNumber value="${list.max_fund}" groupingUsed="true"/> ${list.progress}%</p>
        			<p>${list.now_date}일 남음  <fmt:formatDate value="${list.end_date}" pattern="yyyy-MM-dd"/>마감</p>
        			<p>1주 : <fmt:formatNumber value="${list.unit}" groupingUsed="true"/></p>
        			<c:choose>
              	<c:when test="${list.limit == 1}">
              		<p>모집상황에 따라 목표금액 이상 투자가 가능한 상품입니다.</p>
              	</c:when>
              	<c:otherwise>
              		<p>목표금액 이상 투자가 불가능한 상품입니다.</p>
              	</c:otherwise>
              </c:choose>
              <p>
            	<c:choose>
            		<c:when test="${list.progress >= 100 && list.limit != 1}">
            			<button class="buy-now btn btn-sm height-auto px-4 py-3 btn-primary" onclick="end()">구매종료</button>
            		</c:when>
            		<c:otherwise>         	
            			<a href="${path}/fund/buy/${list.bno}" class="buy-now btn btn-sm height-auto px-4 py-3 btn-primary">Buy Now</a>
            		</c:otherwise>
            	</c:choose>
            	<a href="${path}/fund/good.do?bno=${list.bno}" class="height-auto px-4 py-3 ml-3"><img src="${path}/images/good.jpg" width="50px" height="50px"></a>${list.good}
            	</p>
        	</div>
        </div>
      </div>
    </section>
    <section>
    	
    </section> 
</div>
</body>
</html>