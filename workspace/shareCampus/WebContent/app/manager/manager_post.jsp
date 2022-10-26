<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고글 관리</title>

    <link rel="stylesheet" href="manager_style.css">
    <link rel="stylesheet" href="manager_search.css">
    <link rel="stylesheet" href="manager_table.css">
    <link rel="stylesheet" href="manager_level.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
                    <a href="manager_managerHome.jsp" class="menu"><img src="images/home.png">관리자 홈</a>
                </li>
                <li>
                    <a><img src="images/user.png">회원 관리<img src="images/menu-burger.png" style="float: right; height:20px;"></a>
                    <ul>
                        <li><a href="manager_blackList.jsp">블랙리스트</a></li>
                        <li><a href="manager_memberConfirm.jsp">회원 인증 관리</a></li>
                        <li><a href="manager_memberBadge.jsp">회원 뱃지 관리</a></li>
                    </ul>
                </li>
                <li>
                        <a><img src="images/apps.png">콘텐츠 관리<img src="images/menu-burger.png" style="float: right; height:20px;"></a>
                            <ul>
                                <li><a href="manager_question.jsp">문의글 관리</a></li>
                                <li><a href="manager_post.jsp">신고글 관리</a></li>
                                <li><a href="manager_activityPost.jsp">공고글 관리</a></li>
                            </ul>
                </li>
                <li>
                        <a><img src="images/chart.png">통계<img src="images/menu-burger.png" style="float: right; height:20px;"></a>
                    <ul>
                        <li><a href="manager_settingTerm.jsp">기간별 분석</a></li>
                        <li><a href="manager_settingVisitor.jsp">방문자 통계</a></li>
                    </ul>
                </li>
                <li>
                        <a><img src="images/settings.png">환경 설정<img src="images/menu-burger.png" style="float: right; height:20px;"></a>
                    <ul>
                        <li><a href="manager_settingBanner.jsp">배너 관리</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>

    <div class="contents">
        <h3>신고글 관리</h3>
        <div class="searchBox">
              <input id="search-txt" type="text" placeholder="검색">
              <button class="search-btn" type="submit" onclick="repost_search()">
                <i class="fas fa-search"></i>
              </button>
          </div>

          <table class="post">
            <thead>
            <tr>
                <th>게시판명</th><th>제목</th><th>회원명</th><th>작성일</th><th>신고 횟수</th>
            </tr>
            </thead>
            <tbody>
              <tr onclick="window.open('http://127.0.0.1:5500/project01/test.jsp')">
                <td>스터디</td>
                <td>스터디 하실 분</td>
                <td id="memberName">000</td>
                <td>0000-00-00</td>
                <td>3회</td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </tbody>
          </table>

          <div class="reportLevel">
            <span class="title">신고글 확인 기준<hr></span>
            <span class="in">신고 0회 이상<br></span>
          </div>
    </div>

</body>

<script>
    function search() {
        
    }
</script>

<script src="manager_manager.js"></script>
</html>