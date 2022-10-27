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
                <h1 class="sMypageTitle" style="background-color: #3393f4; color: #fff;">나의 활동 - <span style="font-size: 12px">내가 모은 책갈피 모아보기</span></h1>
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
                                <td class="tit">2</td>
                                <td>
                                    <a href="#">돈 많은 백수 되는법</a>
                                </td>
                                <td>강아지</td>
                                <td>2012-03-12</td>
                                <td>9999+</td>
                            </tr>
                            <tr>
                                <td class="tit">1</td>
                                <td>
                                    <a href="#">2009년 수능 수학 (다)형 기출문제</a>
                                </td>
                                <td>홍길동</td>
                                <td>2010-07-15</td>
                                <td>310</td>
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
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</html>