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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/study/studyBoard.css">
    <link rel="stylesheet" href="../main/main.css">
</head>

<body>
    <div class="bigBox1">
        <jsp:include
		page="${pageContext.request.contextPath}/app/fix/header.jsp" />
        <div id="afthd">
            <div id="box">
                <div id="title">
                    [C&P]모집
                </div>
                <div class="profile">
                    <div class="profPic">
                        <img src="img/men.jpg" style="width: 40px; height: 40px; border-radius: 30px;">
                    </div>
                    <div class="profName">
                        한신E
                    </div>
                </div>
                <div class="time">
                    10/22 16:00
                </div>
               <!--  <div class="report">
                    <a href="">신고하기</a>
                </div> -->
                <hr class="hr1">
                <div class="field">
                    분야
                </div>
                <span class="answerfield">
                    자율
                </span>
                <div class="location">
                    지역
                </div>
                <span class="answerlocation">
                    서울
                </span>
                <div class="people">
                    인원
                </div>
                <span class="answerpeople">
                    1~4명
                </span>
                <hr class="hr2">
                <span class="about">내용이 들어갈 부분</span>
               


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