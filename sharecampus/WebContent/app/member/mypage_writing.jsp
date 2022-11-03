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
</head><jsp:include
		page="${pageContext.request.contextPath}/app/fix/header.jsp" /><section class="curriculumSection">
<div>
    <body>
        <div class="curriculum_header">
            <h1>
                <span class="smTxt" style="font-size: 0.9rem;">LET'S see</span>
                <span class="bgTxt">마이페이지</span>
            </h1>
        </div>
    <div id="container">
        <div id="asideWrap" class="active">
            <div class="sideNav -first">
                <ul>
                    <li class="first_Nav" style="background-color: #3393f4;">
                         <a href="${pageContext.request.contextPath}/app/mypage/mypage_main.jsp">
                        <span style="color: #fff;">내 정보</span>
                        </a>
                    </li> 
                    <li>
                        <a href="${pageContext.request.contextPath}/app/member/mypage_main.jsp">
                        <span>회원 정보 변경</span>
                        </a>
                    </li>
                </ul>
                  <!-- 왼쪽 첫번째 배너 끝-->
            </div> 
            <div class="sideNav -second">
                    <!-- 왼쪽 두번째 배너 시작-->
                <ul>
                    <li class="first_Nav" style="background-color: #3393f4;">
                         <a href="${pageContext.request.contextPath}/app/member/mypage_writing.jsp">
                        <span style="color: #fff;">나의 활동</span>
                        </a>
                    </li> 
                    <li>
                         <a href="${pageContext.request.contextPath}/app/member/mypage_writing.jsp">
                        <span>내가 쓴 글 모아보기</span>
                        </a>
                    </li> 
                    <li>
                         <a href="${pageContext.request.contextPath}/app/member/mypage_comment.jsp">
                        <span>내가 쓴 댓글 모아보기</span>
                        </a>
                    </li>
                    <li>
                          <a href="${pageContext.request.contextPath}/app/member/mypage_bookmark.jsp">
                         <span>내가 모은 북마크 모아보기</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <main id="content" role="main" class="more2" style="border: none;">
            <section class="sMypage">
                <h1 class="sMypageTitle" style="background-color: #3393f4; color: #fff;">나의 활동 - <span style="font-size: 12px">내가 쓴 글 모아보기</span></h1>
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
                            <tr>
                                <td class="tit">4</td>
                                <td>
                                    <a href="#">여름철 알차게 보내는 방법</a>
                                </td>
                                <td>홍길동</td>
                                <td>2019-07-22</td>
                                <td>421</td>
                            </tr>
                            <tr>
                                <td class="tit">3</td>
                                <td>
                                    <a href="#">대학생이 개강한이유</a>
                                </td>
                                <td>홍길동</td>
                                <td>2019-02-27</td>
                                <td>353</td>
                            </tr>
                            <tr>
                                <td class="tit">2</td>
                                <td>
                                    <a href="#">크롬 개발자도구 활용하는 방법</a>
                                </td>
                                <td>홍길동</td>
                                <td>2016-03-24</td>
                                <td>63</td>
                            </tr>
                            <tr>
                                <td class="tit">1</td>
                                <td>
                                    <a href="#">파이썬을 통한 웹페이지 크롤링</a>
                                </td>
                                <td>홍길동</td>
                                <td>2015-07-15</td>
                                <td>5233</td>
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
                            <tr>
                                <td class="tit">4</td>
                                <td>
                                    <a href="#">여름철 알차게 보내는 방법</a>
                                </td>
                                <td>홍길동</td>
                                <td>2019-07-22</td>
                                <td>421</td>
                            </tr>
                            <tr>
                                <td class="tit">3</td>
                                <td>
                                    <a href="#">대학생이 개강한이유</a>
                                </td>
                                <td>홍길동</td>
                                <td>2019-02-27</td>
                                <td>353</td>
                            </tr>
                            <tr>
                                <td class="tit">2</td>
                                <td>
                                    <a href="#">크롬 개발자도구 활용하는 방법</a>
                                </td>
                                <td>홍길동</td>
                                <td>2016-03-24</td>
                                <td>63</td>
                            </tr>
                            <tr>
                                <td class="tit">1</td>
                                <td>
                                    <a href="#">파이썬을 통한 웹페이지 크롤링</a>
                                </td>
                                <td>홍길동</td>
                                <td>2015-07-15</td>
                                <td>5233</td>
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
                            <tr>
                                <td class="tit">4</td>
                                <td>
                                    <a href="#">여름철 알차게 보내는 방법</a>
                                </td>
                                <td>홍길동</td>
                                <td>2019-07-22</td>
                                <td>421</td>
                            </tr>
                            <tr>
                                <td class="tit">3</td>
                                <td>
                                    <a href="#">대학생이 개강한이유</a>
                                </td>
                                <td>홍길동</td>
                                <td>2019-02-27</td>
                                <td>353</td>
                            </tr>
                            <tr>
                                <td class="tit">2</td>
                                <td>
                                    <a href="#">크롬 개발자도구 활용하는 방법</a>
                                </td>
                                <td>홍길동</td>
                                <td>2016-03-24</td>
                                <td>63</td>
                            </tr>
                            <tr>
                                <td class="tit">1</td>
                                <td>
                                    <a href="#">파이썬을 통한 웹페이지 크롤링</a>
                                </td>
                                <td>홍길동</td>
                                <td>2015-07-15</td>
                                <td>5233</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                </div>
            </section>
        </main>
        <div style="display: block; width: 210px;"></div>
        <div class="sideRight" style="display: none;"></div>
    </div>
    <jsp:include
		page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
</div></section>
</html>