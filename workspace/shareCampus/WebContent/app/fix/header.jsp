<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/app/assets/css/main.css" rel="stylesheet">
</head>
<body>
<!-- header start -->
        <header class="Header">
            <nav>
                <div class="logo"><a href="../main/index.html">로고</a></div>
                <ul class="Navbar">
                    <li><a href="#">커리큘럼</a></li>
                    <li><a href="../Study/studyMain.html">스터디</a></li>
                    <li><a href="../activity/activity.html">대외활동</a></li>
                    <li><a href="../community/community.html">커뮤니티</a></li>
                </ul>
                <div class="loginWrap">
                    <div class="searchWrap">
                        <a class="searchIc" href="../search/search.html">
                            <span>검색</span>
                            <img src="https://letspl.me/assets/images/ic-search-white.png">
                        </a>
                    </div>
                    <div class="joinAndLoginWrap">
                        <a class="joinAndLogin join">가입</a>
                        <a class="joinAndLogin login">로그인</a>
                    </div>
                </div>
            </nav>
        </header>
        <!-- header end -->
</body>
</html>