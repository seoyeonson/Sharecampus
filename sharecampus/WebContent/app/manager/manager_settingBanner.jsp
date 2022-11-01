<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배너 관리</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/manager/manager_style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/manager/manager_table.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<!-- <div class="wrapper"> -->
        <div class="sidebar" id="menu">
            <!-- 로고(image) -->
            <div class="logo">
                <img src="..">
            </div>
            <ul>
                <li>
                    <a href="${pageContext.request.contextPath}/app/main/main.jsp" class="menu"><img src="${pageContext.request.contextPath}/assets/images/manager/globe.png">사이트 바로가기</a>
                </li>
                <li>
                    <a><img src="${pageContext.request.contextPath}/assets/images/manager/user.png">회원 관리<img src="${pageContext.request.contextPath}/assets/images/manager/menu-burger.png" style="float: right; height:20px;"></a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/app/manager/manager_memberAll.jsp">회원 목록 관리</a></li>
                        <li><a href="${pageContext.request.contextPath}/app/manager/manager_memberConfirm.jsp">회원 인증 관리</a></li>
                    </ul>
                </li>
                <li>
                        <a><img src="${pageContext.request.contextPath}/assets/images/manager/apps.png">콘텐츠 관리<img src="${pageContext.request.contextPath}/assets/images/manager/menu-burger.png" style="float: right; height:20px;"></a>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/app/manager/manager_activityPost.jsp">대외활동 관리</a></li>
                            </ul>
                </li>
                <li>
                        <a><img src="${pageContext.request.contextPath}/assets/images/manager/settings.png">환경 설정<img src="${pageContext.request.contextPath}/assets/images/manager/menu-burger.png" style="float: right; height:20px;"></a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/app/manager/manager_settingBanner.jsp">배너 관리</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    <!-- </div> -->
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
<script src="${pageContext.request.contextPath}/assets/js/manager/manager.js" charset="utf-8"></script>
</html>