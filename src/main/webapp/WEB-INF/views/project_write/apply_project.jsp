<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="container-fluid banner">
		<div class="banner-thum">
			<img src="${path}/images/project/apply_project_banner.jpg">
		</div>
		<div class="banner-inner">
			<p class="summary">Seed부터 Pre IPO까지</p>
			<h1 class="title">IFU에서<br>투자유치를 시작하세요</h1>
			<button type="button" class="arrow-btn banner-btn" onclick="apply_project();">
				<span>투자유치 신청하기</span>
			</button>
			<p class="desc">Seed 부터 Series A/B/C, Pre IPO까지<br>기업의 성장 단계에 적합한 투자자를 만나세요</p>
		</div>
	</div>
	<section class="container-fluid text-center why-ifu">
		<div class="container text-center contents">
			<h2 class="title">초기기업부터 중소기업까지<br>투자유치가 가능한 플랫폼</h2>
			<h2 class="title">왜 IFU 일까요?</h2>
			<div class="d-lg-flex justify-content-around">
				<div class="card card1">
					<strong>자금조달 이상의 마케팅 효과</strong>
					<div class="d-flex flex-fill align-items-center">
						<div>
							<img class="rounded-circle" src="${path}/images/project/owner1.jpg">
						</div>
						<div class="flex-grow-1 text-left text-sm-center">
							<p>IFU를 통해 투자유치도 받고 회사에 대한 소문도 낼 수 있었습니다.<br><em>파워솔루션 김민철 대표</em></p>
						</div>
					</div>
				</div>
				<div class="card card2">
					<strong>기업에 적합한 투자자를 만나는 곳</strong>
					<div class="d-flex flex-fill align-items-center">
						<div>
							<img class="rounded-circle" src="${path}/images/project/owner2.jpg">
						</div>
						<div class="flex-grow-1 text-left text-sm-center">
							<p>회사에 맞는 투자자를 만나기 어려웠는데, IFU에서 가능했습니다.<br><em>로플 윤심원 대표</em></p>
						</div>
					</div>
				</div>
				<div class="card card3">
					<strong>후속 투자유치가 가능한 곳</strong>
					<div class="d-flex flex-fill align-items-center">
						<div>
							<img class="rounded-circle" src="${path}/images/project/owner3.jpg">
						</div>
						<div class="flex-grow-1 text-left text-sm-center">
							<p>IFU 투자유치와 VC 투자유치를 동시에 받을 수 있었습니다.<br><em>마이카 김소형 대표</em></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="container-fluid second-banner">
		<div class="banner-thum">
			<img src="${path}/images/project/apply_project_banner2.jpg">
		</div>
		<div class="d-flex flex-column align-items-center justify-content-center investors">
			<h3 class="title">165만 투자자를 만나다</h3>
			<p class="desc">IFU에는 165만이 넘는<br>개인/전문/기관 투자자가 있습니다.<br>엔젤 투자자부터 기관 투자자까지 만날 수 있는<br>국내 최대 규모투자유치 플랫폼입니다.</p>
			<div class="row num-list">
				<div class="col-md-4 col-6"><p>10+</p><span>은행 및 금융기관</span></div>
				<div class="col-md-4 col-6 "><p>56+</p><span>밴처캐피탈</span></div>
				<div class="col-md-4 col-6 "><p>20+</p><span>사모펀드</span></div>
				<div class="col-md-4 col-6 "><p>30+</p><span>해외 투자자</span></div>
				<div class="col-md-4 col-6 "><p>1,500+</p><span>전문 투자자</span></div>
				<div class="col-md-4 col-6 "><p>1,650,000+</p><span>일반 투자자</span></div>
			</div>
		</div>
	</div>
	<section class="container condition">
		<h2 class="title">누가 투자받을 수 있나요?</h2>
		<p class="desc">지금도 많은 기업과 콘텐츠가 와디즈에서 투자를 받고 있습니다.</p>
		<div class="condition-slider">
			<div id="visual" class="owl-carousel">
				<div class="item">
					<div>
						<img src="${path}/images/project/condition1.jpg">
					</div>
					<div class="card">
						<p class="icon1"><i class="fas fa-rocket fa-2x"></i></p>
						<div>
							<strong>성장하는 기업</strong>
							<p>로보 어드바이저 서비스 <span class="maker">불리오</span>는 701명의 투자자로부터 약 15억 7천만원 투자유치에 성공했습니다.</p>
						</div>
					</div>
				</div>
				<div class="item">
					<div>
						<img src="${path}/images/project/condition2.jpg">
					</div>
					<div class="card">
						<p class="icon2"><i class="fas fa-music fa-2x"></i></p>
						<div>
							<strong>공연/전시/영화 산업</strong>
							<p><span class="maker">그린플러그드페스티벌</span>은 555명의 투자자로부터 약 9억 6천만 원 투자유치 받고, 페스티벌 시작 전부터 입소문을 내는 데에도 성공하였습니다.</p>
						</div>
					</div>
				</div>
				<div class="item">
					<div>
						<img src="${path}/images/project/condition3.jpg">
					</div>
					<div class="card">
						<p class="icon3"><i class="fas fa-utensils fa-2x"></i></p>
						<div>
							<strong>F&B 음식점, 프랜차이즈 사업자</strong>
							<p><span class="maker">돼지고기 전문점</span>는 6억 4천만 원을 투자받았고 500명이 넘는 투자자는 가게의 단골 손님이 되었습니다.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="container ifu-team">
		<h2 class="title">스타트업의 러닝메이트<br>IFU 투자팀</h2>
		<p class="desc">투자유치까지 든든한 힘이 되어줄 IFU 투자심사팀을 소개합니다.</p>
		<div class="team-slider">
			<ul id="team" class="owl-carousel">
				<li class="card">
					<div>
						<img src="${path}/images/project/team1.jpg">
					</div>
					<div class="card-body">
						<p class="word">“이것만 해결되면잘 될 것 같은데”에서<br>‘이것’을 해결해드리려 노력하는 IFU 투자심사팀 김강훈입니다.</p>
						<p class="info"><strong>김강훈</strong><span>IFU 투자심사팀</span></p>
					</div>
				</li>
				<li class="card">
					<div>
						<img src="${path}/images/project/team2.jpg">
					</div>
					<div class="card-body">
						<p class="word">기업의 페이스메이커와 같은 심사역이 되고자 합니다.<br>당신의 기업이 투자를 만나 더 큰 가치를 만들도록 합니다.</p>
						<p class="info"><strong>장그래</strong><span>IFU 투자심사팀</span></p>
					</div>
				</li>
				<li class="card">
					<div>
						<img src="${path}/images/project/team3.jpg">
					</div>
					<div class="card-body">
						<p class="word">시대의 전환을 빠르게 인지하는 심사역이 되고자 합니다.<br>투자유치로 세상에 변화를 줄 수 있는 기업과 함께합니다.</p>
						<p class="info"><strong>최현영</strong><span>IFU 투자심사팀</span></p>
					</div>
				</li>
				<li class="card">
					<div>
						<img src="${path}/images/project/team4.jpg">
					</div>
					<div class="card-body">
						<p class="word">기업의 성장을 함께 만들어 갈 수 있는 파트너입니다.<br>자금이 없어서 좋은 기회를 놓치지 않도록 돕고 있습니다.</p>
						<p class="info"><strong>박재훈</strong><span>IFU 투자심사팀</span></p>
					</div>
				</li>
				<li class="card">
					<div>
						<img src="${path}/images/project/team5.jpg">
					</div>
					<div class="card-body">
						<p class="word">스타트업의 시작부터 끝까지 함께 돕고 싶습니다.<br>작더라도 성공 경험을 통해 자신감을 심어주고 있습니다.</p>
						<p class="info"><strong>이제훈</strong><span>IFU 투자심사팀</span></p>
					</div>
				</li>
			</ul>
		</div>
	</section>
	<section class="container faq">
		<h2 class="title">자주하는 질문</h2>
		<div id="accordion" class="faq-contents">
			<div class="card">
				<a class="card-header card-link d-flex justify-content-between" data-toggle="collapse" href="#one">자격요건이 무엇인가요?<span><i class="fas fa-chevron-down"></i></span></a>
				<div id="one" class="collapse" data-parent="#accordion">
					<div class="card-body">
						<p class="info-qna">온라인 공모 투자유치인 IPO(IFU Public Offering)의 경우 업력 7년 이내의 비상장주식회사(프랜차이즈, 음식점, 공연/전시기업, 특수목적법인 포함) 또는 업력과 상관없이 벤처기업, 이노비즈기업, 메인비즈기업, 사회적기업이라면 가능합니다. 일부 세부 업종은 자본시장법에 따라 진행이 어려울 수 있습니다. 신청한 기업이 세부 업종에 해당될 경우 개별 안내가 나가게 됩니다.<br>
						<br>사모형 기업의 경우 업력과 분야가 법적으로 제한되어 있지는 않습니다. 다만 내부 투자 심의 규정에 의해 진행이 되지 않을 수 있습니다.</p>
					</div>
				</div>
			</div>
			<div class="card">
				<a class="card-header card-link d-flex justify-content-between" data-toggle="collapse" href="#two">발행가능한 증권 유형은 어떤 것이 있나요?<span><i class="fas fa-chevron-down"></i></span></a>
				<div id="two" class="collapse" data-parent="#accordion">
					<div class="card-body">
						<p class="info-qna">투자형 프로젝트는 기업의 재무 상태에 따라 원하는 주식/채권 발행이 가능합니다.</p>
					</div>
				</div>
			</div>
			<div class="card">
				<a class="card-header card-link d-flex justify-content-between" data-toggle="collapse" href="#three">비공개로 투자받는 방법은 없나요?<span><i class="fas fa-chevron-down"></i></span></a>
				<div id="three" class="collapse" data-parent="#accordion">
					<div class="card-body">
						<p class="info-qna">IFU에서는 IFU-connector이라는 서비스를 통해 사모/기관 투자자를 연결해드리고 있습니다.<br><br>이는 소수의 한정된 인원에게만 기업을 공개하고 투자유치를 받는 것을 의미합니다.<br>간편신청 후 자료를 제출하고 담당 투자심사역과 논의 과정에서 사모/기관 투자유치 의사를 이야기해주세요.<br>와디즈 내부 규정에 의거하여 투자심사역이 진행 가능 여부를 말씀드립니다.</p>
					</div>
				</div>
			</div>
			<div class="card">
				<a class="card-header card-link d-flex justify-content-between" data-toggle="collapse" href="#four">어떤 증권으로 최대 얼마나 투자받을 수 있나요?<span><i class="fas fa-chevron-down"></i></span></a>
				<div id="four" class="collapse" data-parent="#accordion">
					<div class="card-body">
						<p class="info-qna">온라인 공모형 투자유치인 WPO로는 1년에 최대 15억까지 가능합니다.<br><br>추가 자금이 필요할 경우 사모형 투자유치 서비스를 이용할 수 있습니다.<br>증권의 유형은 재무 상태에 따라 다양한 형태로 가능합니다.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>