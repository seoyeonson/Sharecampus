<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일자별 요약</title>

    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
    <div class="wrapper">
        <div class="sidebar" id="menu">
            <!-- 로고(image) -->
            <div class="logo">
                <img src="..">
            </div>
            <ul>
                <li>
                    <a href="#" class="menu"><img src="images/globe.png">사이트 바로가기</a>
                </li>
                <li>
                    <a href="managerHome.html" class="menu"><img src="images/home.png">관리자 홈</a>
                </li>
                <li>
                    <a><img src="images/user.png">회원 관리<img src="images/menu-burger.png" style="float: right; height:20px;"></a>
                    <ul>
                        <li><a href="blackList.html">블랙리스트</a></li>
                        <li><a href="memberConfirm.html">회원 인증 관리</a></li>
                        <li><a href="memberBadge.html">회원 뱃지 관리</a></li>
                    </ul>
                </li>
                <li>
                        <a><img src="images/apps.png">콘텐츠 관리<img src="images/menu-burger.png" style="float: right; height:20px;"></a>
                            <ul>
                                <li><a href="question.html">문의글 관리</a></li>
                                <li><a href="post.html">신고글 관리</a></li>
                                <li><a href="activityPost.html">공고글 관리</a></li>
                            </ul>
                </li>
                <li>
                        <a><img src="images/chart.png">통계<img src="images/menu-burger.png" style="float: right; height:20px;"></a>
                    <ul>
                        <li><a href="settingTerm.html">기간별 분석</a></li>
                        <li><a href="settingVisitor.html">방문자 통계</a></li>
                    </ul>
                </li>
                <li>
                        <a><img src="images/settings.png">환경 설정<img src="images/menu-burger.png" style="float: right; height:20px;"></a>
                    <ul>
                        <li><a href="settingBanner.html">배너 관리</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="contents">
        <h3>방문자 통계</h3>
            <div class="card card1"><p>방문자 현황</p></div>
            <div class="card card2"><p>일자별 요약</p></div>
    </div>

</body>
<script src="manager.js"></script>
</html>