<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배너 관리</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager/manager_style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager/manager_table.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<!-- <div class="wrapper"> -->
	<jsp:include
		page="${pageContext.request.contextPath}/app/manager/managerindex.jsp" />
	<!-- </div> -->
	<div class="contents">
		<h3>배너 관리</h3>
		<!-- 전체 배너 테이블  -->
		<table class="banner">
			<thead>
				<tr>
					<th>사용 여부</th>
					<th>배너 적용/해제 일시</th>
					<th>배너 보기</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${not empty memberAll and fn:length(memberAll) > 0}">
						<c:forEach var="member" items="${memberAll}">
							<tr>
								<td><c:out value="${member.getMemberNum()}" /></td>
								<td><c:out value="${member.getMemberNickname()}" /></td>
								<td><c:out value="${member.getMemberSignupDate()}" /></td>
								<td><c:out value="${member.getMemberType()}" /></td>
								<td><button class="removeList" onclick="remove_tr(this)">회원
										삭제</button></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="3" align="center">준비중입니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
				<%-- <td>현재 배너</td>
				<td>0000-00-00</td>
				<td><a
					href="${pageContext.request.contextPath}/app/manager/manager_seeBanner.jsp"
					target="_blank">배너 보기</a></td>
				</tr>
				<tr>
					<td>이전 배너</td>
					<td>0000-00-00</td>
					<td><a
						href="${pageContext.request.contextPath}/app/manager/manager_seeBanner.jsp"
						target="_blank">배너 보기</a></td>
				</tr> --%>
			</tbody>
</body>
<script
	src="${pageContext.request.contextPath}/assets/js/manager/manager.js"
	charset="utf-8"></script>
</html>