<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뱃지 관리</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager_style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager_table.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager_button.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager_level.css">
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
						<li><a href="manager_blackList.jsp">블랙리스트</a></li>
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
		<h3>회원 뱃지 관리</h3>
		<input type="button" value="자세히 보기" class="confirm_btn" id="badge_btn"
			onclick="member_alert()">
		<table class="confirm">
			<thead>
				<tr>
					<th><input type="checkbox" name="selectallbadge"
						id="badges_chk" onclick='selectAllBadge(this)'></th>
					<th>뱃지</th>
					<th>회원명</th>
					<th>획득일</th>
					<th>사용 여부</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="checkbox" name="badge_btn" id="badge_chk1"
						onclick='checkSelectAllBadge()'></td>
					<td>00뱃지</td>
					<td>000</td>
					<td>0000-00-00</td>
					<td>사용 중</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="badge_btn" id="badge_chk2"
						onclick='checkSelectAllBadge()'></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="badge_btn" id="badge_chk3"
						onclick='checkSelectAllBadge()'></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="badge_btn" id="badge_chk4"
						onclick='checkSelectAllBadge()'></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="badge_btn" id="badge_chk5"
						onclick='checkSelectAllBadge()'></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>

		<div class="badgeLevel">
			<span class="title">뱃지 지급 기준
				<hr>
			</span> <span class="in"> 글 0개 이상 <br> 댓글 0개 이상 <br> 방문횟수
				0회 이상 <br>
			</span>
		</div>

	</div>


</body>
<script src="${pageContext.request.contextPath}/assets/js/manager_manager.js"></script>
</html>