<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="${pageContext.request.contextPath}/assets/css/main/main.css" rel="stylesheet">
<header class="Header">
    <nav>
        <div class="logo"><a href="${pageContext.request.contextPath}/index.jsp">로고</a></div>
        <ul class="Navbar">
            <li><a href="${pageContext.request.contextPath}/app/curriculum/curriculum.jsp">커리큘럼</a></li>
            <li><a href="${pageContext.request.contextPath}/app/study/study_main.jsp">스터디</a></li>
            <li><a href="${pageContext.request.contextPath}/app/activity/activity.jsp">대외활동</a></li>
            <li><a href="${pageContext.request.contextPath}/app/community/community.jsp">커뮤니티</a></li>
        </ul>
        <div class="loginWrap">
            <div class="searchWrap">
                <a class="searchIc" href="${pageContext.request.contextPath}/app/search/search.jsp">
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
