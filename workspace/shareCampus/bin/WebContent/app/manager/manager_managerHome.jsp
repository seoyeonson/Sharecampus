<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Google tag (gtag.js) -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-246180959-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-246180959-1');
</script>


<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 홈</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/app/assets/css/manager_style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/app/assets/css/manager_search.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<div class="wrapper">
	<div class="sidebar">
		<!-- 로고(image) -->
		<div class="logo">
			<img src="..">
		</div>
		<ul>
			<li><a href="#" class="menu"><img
					src="${pageContext.request.contextPath}/app/assets/images/globe.png">사이트
					바로가기</a></li>
			<li><a href="manager_managerHome.jsp" class="menu"><img
					src="${pageContext.request.contextPath}/app/assets/images/home.png">관리자
					홈</a></li>
			<li><a><img
					src="${pageContext.request.contextPath}/app/assets/images/user.png">회원
					관리 <img
					src="${pageContext.request.contextPath}/app/assets/images/menu-burger.png"
					style="float: right; height: 20px;"></a>
				<ul>
					<li><a href="manager_blackList.jsp">블랙리스트</a></li>
					<li><a href="manager_memberConfirm.jsp">회원 인증 관리</a></li>
					<li><a href="manager_memberBadge.jsp">회원 뱃지 관리</a></li>
				</ul></li>
			<li><a><img
					src="${pageContext.request.contextPath}/app/assets/images/apps.png">콘텐츠
					관리<img
					src="${pageContext.request.contextPath}/app/assets/images/menu-burger.png"
					style="float: right; height: 20px;"></a>
				<ul>
					<li><a href="manager_question.jsp">문의글 관리</a></li>
					<li><a href="manager_post.jsp">신고글 관리</a></li>
					<li><a href="manager_activityPost.jsp">공고글 관리</a></li>
				</ul></li>
			<li><a><img
					src="${pageContext.request.contextPath}/app/assets/images/chart.png">통계<img
					src="${pageContext.request.contextPath}/app/assets/images/menu-burger.png"
					style="float: right; height: 20px;"></a>
				<ul>
					<li><a href="manager_settingTerm.jsp">기간별 분석</a></li>
					<li><a href="manager_settingVisitor.jsp">방문자 통계</a></li>
				</ul></li>
			<li><a><img
					src="${pageContext.request.contextPath}/app/assets/images/settings.png">환경
					설정<img
					src="${pageContext.request.contextPath}/app/assets/images/menu-burger.png"
					style="float: right; height: 20px;"></a>
				<ul>
					<li><a href="manager_settingBanner.jsp">배너 관리</a></li>
				</ul></li>
		</ul>
	</div>
</div>
<div class="contents">
	<h3>관리자 모드</h3>
	<div class="card card1">
		<p>방문자 현황</p>
	</div>
	<div class="card card2">
		<p>일자별 요약</p>
	</div>
	<div class="card card3">
		<p>신규 회원</p>
	</div>
	<div class="card card4">
		<p>최근 신고된 글</p>
	</div>
	<div class="card card5">
		<p>뱃지 획득 현황</p>
	</div>
	<div class="card card6">
		<p>문의글</p>
	</div>
</div>

</body>
<script src="${pageContext.request.contextPath}/app/assets/js/manager_manager.js"></script>
</html>