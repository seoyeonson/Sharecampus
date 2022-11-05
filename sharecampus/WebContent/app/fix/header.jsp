<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="${pageContext.request.contextPath}/assets/css/main/main.css" rel="stylesheet">
<header class="Header">
    <nav>
        <div class="logo"><a href="${pageContext.request.contextPath}/index.jsp">로고</a></div>
        <ul class="Navbar">
            <li><a href="${pageContext.request.contextPath}/app/curriculum/curriculum.jsp">커리큘럼</a></li>
            <li><a href="${pageContext.request.contextPath}/app/study/study_main.jsp">스터디</a></li>
            <li><a href="${pageContext.request.contextPath}/list.ac">대외활동</a></li>
            <li><a href="${pageContext.request.contextPath}/community/listDs.co">커뮤니티</a></li>
        </ul>
        <div class="loginWrap">
            <div class="searchWrap">
                <a class="searchIc" href="${pageContext.request.contextPath}/app/search/search.jsp">
                    <span>검색</span>
                    <img src="https://letspl.me/assets/images/ic-search-white.png">
                </a>
            </div>
            <div class="joinAndLoginWrap">
                <c:choose>
					<c:when test="${empty sessionScope.memberNum}">
		                <a class="joinAndLogin join">가입</a>
		                <a class="joinAndLogin login">로그인</a>
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/member/logoutOk.me" class="logOutAndMypage" >로그아웃</a>
						<a href="${pageContext.request.contextPath}/member/mypageOk.me" class="logOutAndMypage" >마이페이지</a>
					</c:otherwise>
			</c:choose>
            </div>
        </div>
    </nav>
</header>
