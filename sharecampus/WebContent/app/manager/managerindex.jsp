<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="sidebar" id="menu">
		<!-- 로고(image) -->
		<div class="logo">
			<img src="..">
		</div>
		<ul>
			<li><a href="/main/main.mn" class="menu"><img
					src="${pageContext.request.contextPath}/assets/images/manager/globe.png">사이트
					바로가기</a></li>
			<li><a><img
					src="${pageContext.request.contextPath}/assets/images/manager/user.png">회원
					관리<img
					src="${pageContext.request.contextPath}/assets/images/manager/menu-burger.png"
					style="float: right; height: 20px;"></a>
				<ul>
					<li><a href="/manager/memberList.ma">회원 목록 관리</a></li>
					<li><a href="/manager/memberConfirm.ma">회원 인증 관리</a></li>
				</ul></li>
			<li><a><img
					src="${pageContext.request.contextPath}/assets/images/manager/apps.png">콘텐츠
					관리<img
					src="${pageContext.request.contextPath}/assets/images/manager/menu-burger.png"
					style="float: right; height: 20px;"></a>
				<ul>
					<li><a href="/manager/activityPost.ma">대외활동 관리</a></li>
				</ul></li>
			<li><a><img
					src="${pageContext.request.contextPath}/assets/images/manager/settings.png">환경
					설정<img
					src="${pageContext.request.contextPath}/assets/images/manager/menu-burger.png"
					style="float: right; height: 20px;"></a>
				<ul>
					<li><a href="/manager/settingBanner.ma">배너 관리</a></li>
				</ul></li>
		</ul>
	</div>
</body>
</html>