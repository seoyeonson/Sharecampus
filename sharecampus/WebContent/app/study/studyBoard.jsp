<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>스터디보드</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/study/studyBoard.css">
<!-- <link rel="stylesheet" href="../main/main.css"> -->
</head>

<body>
	<div class="bigBox1">
		<jsp:include
			page="${pageContext.request.contextPath}/app/fix/header.jsp" />
		<div id="afthd">
			<div id="box">
			<!-- <ul class="actions"> -->
			 	<!-- <li><input type="button" value="글쓰기" id="writeStudyBtn"class="primary" onclick=""/></li>
                <li><input type="button" value="목록"  id="studyListBtn" class="primary" onclick=""/></li> -->
				<c:if test="${sessionScope.memberNum == study.getMemberNum()}">
                <li><input type="button" id="updateBtn" value="수정" onclick="location.href='/study/listDu.su?studyNum=${study.getStudyNum()}'"/></li>
                <li><input type="button" id="deleteBtn" value="삭제" onclick="location.href='/study/listDd.su?studyNum=${study.getStudyNum()}'"/></li>
                </c:if>
            </ul>				
            <div id="title"><c:out value="${study.getStudyTitle()}"/></div>
				<div class="profile">
					<div class="profPic">
						<img src="img/men.jpg"
							style="width: 40px; height: 40px; border-radius: 30px;">
					</div>
					<div class="profName"><c:out value="${study.getMemberNickName()}"/></div>
				</div>
				<div class="time"><c:out value="${study.getStudyRegistDate()}"/></div>
				<!--  <div class="report">
                    <a href="">신고하기</a>
                </div> -->
				<hr class="hr1">

				<form>	
					<ul class="studyInfo">
						<li>분야 : <c:out value="${study.getStudyDepart()}"/></li>
						<li>지역 : <c:out value="${study.getStudyArea()}"/></li>
						<li>인원 : <c:out value="${study.getStudyPeople()}"/></li>
						<li>연락 : <c:out value="${study.getStudyContact()}"/></li>
					</ul>
					<%-- <div class="field">분야 : <c:out value="${study.getStudyDepart()}"/></div>
					<span class="answerfield"><c:out value="${study.getStudyDepart()}"/></span>
					<div class="location">지역 : <c:out value="${study.getStudyArea()}"/></div>
					<span class="answerlocation"><c:out value="${study.getStudyArea()}"/></span>
					<div class="people">인원 : <c:out value="${study.getStudyPeople()}"/></div>
					<span class="answerpeople"><c:out value="${study.getStudyPeople()}"/></span>
					<div class="contactMethod">연락 : <c:out value="${study.getStudyContact()}"/></div>
					<span class="answerContact"><c:out value="${study.getStudyContact()}"/></span> --%>
					<hr class="hr2">
					<span class="about"><c:out value="${study.getStudyIntro()}"/></span>
				</form>		


			</div>
		</div>
	</div>

	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

</html>