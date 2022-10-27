<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인증 관리</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager_style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager_search.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager_table.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
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
						<li><a href="blackList.jsp">블랙리스트</a></li>
						<li><a href="manager_memberConfirm.jsp">회원 인증 관리</a></li>
						<li><a href="manager_memberBadge.jsp">회원 뱃지 관리</a></li>
					</ul></li>
				<li><a><img
						src="${pageContext.request.contextPath}/assets/images/apps.png">콘텐츠
						관리<img
						src="${pageContext.request.contextPath}/assets/images/menu-burger.png"
						style="float: right; height: 20px;"></a>
					<ul>
						<li><a href="manager_question.jsp">문의글 관리</a></li>
						<li><a href="manager_post.jsp">신고글 관리</a></li>
						<li><a href="manager_activityPost.jsp">공고글 관리</a></li>
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
		<h3>회원 인증 관리</h3>
		<div class="searchBox">
			<input id="search-txt" type="text" placeholder="검색">
			<button class="search-btn" type="submit">
				<i class="fas fa-search"></i>
			</button>
		</div>

		<table class="confirm">
			<thead>
				<tr>
					<th><input type="checkbox" name="selectall" id="all-check"
						onclick='selectAll(this)'></th>
					<th>분류</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>승인 여부</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="checkbox" name="check_btn" id="check1"
						onclick='checkSelectAll()'></td>
					<td>학생</td>
					<td>인증 요청합니다</td>
					<td>000</td>
					<td>0000-00-00</td>
					<td>승인 전</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="check_btn" id="check2"
						onclick='checkSelectAll()'></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="check_btn" id="check3"
						onclick='checkSelectAll()'></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="check_btn" id="check4"
						onclick='checkSelectAll()'></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="check_btn" id="check5"
						onclick='checkSelectAll()'></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
<script src="${pageContext.request.contextPath}/assets/js/manager_manager.js"></script>
</html>