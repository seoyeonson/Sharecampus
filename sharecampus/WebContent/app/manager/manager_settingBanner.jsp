<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배너 관리</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager_style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager_banner.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

</head>
<body>
	<div class="wrapper">
		<div class="sidebar" id="menu">
			<!-- 로고(image) -->
			<div class="logo">
				<img src="..">
			</div>
			<ul>
				<li><a href="#" class="menu"><img
						src="${pageContext.request.contextPath}/assets/images/globe.png">사이트
						바로가기</a></li>
				<li><a href="manager_managerHome.jsp" class="menu"><img
						src="${pageContext.request.contextPath}/assets/images/home.png">관리자
						홈</a></li>
				<li><a><img
						src="${pageContext.request.contextPath}/assets/images/user.png">회원
						관리<img
						src="${pageContext.request.contextPath}/assets/images/menu-burger.png"
						style="float: right; height: 20px;"></a>
					<ul>
						<li><a href="manager_blackList.jsp">블랙리스트</a></li>
						<li><a href="manager_memberConfirm.jsp">회원 인증 관리</a></li>
						<li><a href="manager_memberPoint.jsp">회원 포인트 관리</a></li>
						<li><a href="manager_memberBadge.jsp">회원 뱃지 관리</a></li>
					</ul></li>
				<li><a><img
						src="${pageContext.request.contextPath}/assets/images/apps.png">콘텐츠
						관리<img
						src="${pageContext.request.contextPath}/assets/images/menu-burger.png"
						style="float: right; height: 20px;"></a>
					<ul>
						<li><a href="manager_question.jsp">문의글 관리</a></li>
						<li><a href="manager_comment.jsp">댓글 관리</a></li>
						<li><a href="manager_post.jsp">게시글 관리</a></li>
					</ul></li>
				<li><a><img
						src="${pageContext.request.contextPath}/assets/images/chart.png">통계<img
						src="${pageContext.request.contextPath}/assets/images/menu-burger.png"
						style="float: right; height: 20px;"></a>
					<ul>
						<li><a href="manager_settingTerm.jsp">기간별 분석</a></li>
						<li><a href="manager_settingVisitor.jsp">방문자 통계</a></li>
					</ul></li>
				<li><a><img
						src="${pageContext.request.contextPath}/assets/images/settings.png">환경
						설정<img
						src="${pageContext.request.contextPath}/assets/images/menu-burger.png"
						style="float: right; height: 20px;"></a>
					<ul>
						<li><a href="manager_settingBanner.jsp">배너 관리</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	<div class="contents">
		<h3>배너 관리</h3>
		<div class="banner1 banner">첫번째 배너입니다</div>
		<div class="banner2 banner">두번째 배너입니다</div>
	</div>

</body>
<script src="${pageContext.request.contextPath}/assets/js/manager.js"></script>
</html>