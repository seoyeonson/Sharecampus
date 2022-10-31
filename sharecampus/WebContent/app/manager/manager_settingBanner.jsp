<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배너 관리</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/manager_style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/manager_table.css">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/manager_butoon.css"> --%>
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
				<li>
                    <a href="${pageContext.request.contextPath}/app/main/index.jsp" class="menu"><img src="${pageContext.request.contextPath}/assets/images/globe.png">사이트 바로가기</a>
                </li>
                <li>
                    <a><img src="${pageContext.request.contextPath}/assets/images/user.png">회원 관리<img src="${pageContext.request.contextPath}/assets/images/menu-burger.png" style="float: right; height:20px;"></a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/app/manager/manager_memberAll.jsp">회원 목록 관리</a></li>
                        <li><a href="${pageContext.request.contextPath}/app/manager/manager_memberConfirm.jsp">회원 인증 관리</a></li>
                    </ul>
                </li>
                <li>
                        <a><img src="${pageContext.request.contextPath}/assets/images/apps.png">콘텐츠 관리<img src="${pageContext.request.contextPath}/assets/images/menu-burger.png" style="float: right; height:20px;"></a>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/app/manager/manager_activityPost.jsp">대외활동 관리</a></li>
                            </ul>
                </li>
                <li>
                        <a><img src="${pageContext.request.contextPath}/assets/images/settings.png">환경 설정<img src="${pageContext.request.contextPath}/assets/images/menu-burger.png" style="float: right; height:20px;"></a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/app/manager/manager_settingBanner.jsp">배너 관리</a></li>
                    </ul>
                </li>
            </ul>
        </div>
	<div class="contents">
        <h3>배너 관리</h3>
        <!-- 전체 배너 테이블  -->
          <table class="banner">
            <thead>
            <tr>
                <th>사용 여부</th><th>배너 적용/해제 일시</th><th>배너 보기</th>
            </tr>
            </thead>
            <tbody>
                <td>현재 배너</td>
                <td>0000-00-00</td>
                <td>
                    <a href="${pageContext.request.contextPath}/app/manager/manager_seeBanner.jsp" target="_blank">배너 보기</a>
                </td>
              </tr>
              <tr>
                <td>이전 배너</td>
                <td>0000-00-00</td>
                <td>
                    <a href="${pageContext.request.contextPath}/app/manager/manager_seeBanner.jsp" target="_blank">배너 보기</a>
                </td>
              </tr>

</body>
<script src="${pageContext.request.contextPath}/assets/js/manager.js" charset="utf-8"></script>
</html>