<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <title>마이페이지

    </title>
</head>
<div>
    <div id="container">
        <div id="asideWrap" class="active">
            <div class="sideNav -first">
                <ul>
                    <li class="first_Nav" style="background-color: #3393f4;">
                        <a href="mypage_main.html">
                        <span style="color: #fff;">내 정보</span>
                        </a>
                    </li> 
                    <li>
                        <a href="mypage_main.html">
                        <span>회원 정보 변경</span>
                        </a>
                    </li>
                   
                </ul>
            </div> 
            <div class="sideNav -second">
                <ul>
                    <li class="first_Nav" style="background-color: #3393f4;">
                        <a href="mypage_writing.html">
                        <span style="color: #fff;">나의 활동</span>
                        </a>
                    </li> 
                    <li>
                        <a href="mypage_writing.html">
                        <span>내가 쓴 글 모아보기</span>
                        </a>
                    </li> 
                    <li>
                        <a href="mypage_comment.html">
                        <span>내가 쓴 댓글 모아보기</span>
                        </a>
                    </li>
                    <li>
                        <a href="mypage_bookmark.html">
                        <span>내가 모은 책갈피 모아보기</span>
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
                    <table class="board_list">
                        <thead>
                            <th>번호</th>
                            <th>제목</th>
                            <th>글쓴이</th>
                            <th>작성일</th>
                            <th>조회</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td>10</td>
                                <td class="tit">
                                    <a href="https://www.youtube.com/watch?v=ImApfzbYfio">당차게 시작하는 하루</a>
                                </td>
                                <td>홍길동</td>
                                <td>2022-10-12</td>
                                <td>763</td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td class="tit">
                                    <a href="https://www.youtube.com/watch?v=R5jKTmGSlWA">HTML 코딩 시작하기 </a>
                                </td>
                                <td>홍길동</td>
                                <td>2021-03-24</td>
                                <td>483</td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td class="tit">
                                    <a href="https://www.youtube.com/watch?v=6-lU3oTRlJI">비트코인 늦었다 지금이 기회다</a>
                                </td>
                                <td>홍길동</td>
                                <td>2021-03-24</td>
                                <td>723</td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td class="tit">
                                    <a href="#">동부센트레빌 홈페이지 헤더영상</a>
                                </td>
                                <td>홍길동</td>
                                <td>2021-03-24</td>
                                <td>883</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td class="tit">
                                    <a href="#">데이터 베이스의 개념</a>
                                </td>
                                <td>홍길동</td>
                                <td>2021-02-26</td>
                                <td>883</td>
                            </tr>
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
    <footer>
    </footer>
</div>
</html>