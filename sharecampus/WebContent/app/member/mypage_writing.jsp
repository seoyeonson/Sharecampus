<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <title>마이페이지

    </title>
</head>
<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp" />
<section class="curriculumSection">
	<div>
	    <div class="curriculum_header">
	        <h1>
	            <span class="smTxt" style="font-size: 0.9rem;">LET'S see</span>
	            <span class="bgTxt">마이페이지</span>
	        </h1>
	    </div>
	    <div id="container">
	        <jsp:include page="${pageContext.request.contextPath}/app/member/mypage_menu.jsp" />
	        <main id="content" role="main" class="more2" style="border: none;">
	            <section class="sMypage">
	                <h1 class="sMypageTitle" style="background-color: #3393f4; color: #fff;">나의 활동 - <span style="font-size: 12px">내가 쓴 댓글 모아보기</span></h1>
	                <div>
	                    <div class="board_list_wrap">
		                    <table class="board_list curriculum">
		                    <br>
		                        <thead>
		                            <th>번호</th>
		                            <th>제목</th>
		                            <th>글쓴이</th>
		                            <th>작성일</th>
		                            <th>조회</th>
		                        </thead>
		                        <tbody>
		                        	<div style="width:90%; margin: auto;">
		                            <hr>
		                            <div ><span style="font-style: bold; font-size: 17px">커리큘럼</span><span>(1-5 / 31건)</span></div>
		                            <br>
		                            <br>
		                        	</div>
		                                <td>5</td>
		                                <td class="tit">
		                                    <a href="#">집에서 시간 때우는 방법</a>
		                                </td>
		                                <td>홍길동</td>
		                                <td>2020-12-12</td>
		                                <td>4213</td>
		                            </tr>
		                        </tbody>
		                    </table>
		                    <table class="board_list study">
		                        <thead>
		                            <th>번호</th>
		                            <th>제목</th>
		                            <th>글쓴이</th>
		                            <th>작성일</th>
		                            <th>조회</th>
		                        </thead>
		                        <tbody>
		                        <div style="width:90%; margin: auto;">
		                            <hr>
		                            <div ><span style="font-style: bold; font-size: 17px">스터디</span><span>(1-5 / 31건)</span></div>
		                            <br>
		                            <br>
		                            <tr>
		                                <td>5</td>
		                                <td class="tit">
		                                    <a href="#">집에서 시간 때우는 방법</a>
		                                </td>
		                                <td>홍길동</td>
		                                <td>2020-12-12</td>
		                                <td>4213</td>
		                            </tr>
		                        </tbody>
		                    </table>
		                    <table class="board_list activity">
		                        <thead>
		                            <th>번호</th>
		                            <th>제목</th>
		                            <th>글쓴이</th>
		                            <th>작성일</th>
		                            <th>조회</th>
		                        </thead>
		                        <tbody>
		                        <div style="width:90%; margin: auto;">
		                            <hr>
		                            <div ><span style="font-style: bold; font-size: 17px">대외활동</span><span>(1-5 / 31건)</span></div>
		                            <br>
		                            <br>
		                            <tr>
		                                <td>5</td>
		                                <td class="tit">
		                                    <a href="#">집에서 시간 때우는 방법</a>
		                                </td>
		                                <td>홍길동</td>
		                                <td>2020-12-12</td>
		                                <td>4213</td>
		                            </tr>
		                        </tbody>
		                    </table>
	                	</div>
	                </div>
	            </section>
	        </main>
	    </div>
	</div>
</section>
<jsp:include
		page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
<jsp:include
	page="${pageContext.request.contextPath}/app/fix/footer.jsp" /> 
</html>