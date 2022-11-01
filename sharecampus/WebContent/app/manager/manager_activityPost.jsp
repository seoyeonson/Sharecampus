<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공고글 관리</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/manager/manager_style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/manager/manager_table.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/manager/manager_button.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<!-- <div class="wrapper"> -->
        <div class="sidebar" id="menu">
            <!-- 로고(image) -->
            <div class="logo">
                <img src="..">
            </div>
            <ul>
                <li>
                    <a href="${pageContext.request.contextPath}/app/main/main.jsp" class="menu"><img src="${pageContext.request.contextPath}/assets/images/manager/globe.png">사이트 바로가기</a>
                </li>
                <li>
                    <a><img src="${pageContext.request.contextPath}/assets/images/manager/user.png">회원 관리<img src="${pageContext.request.contextPath}/assets/images/manager/menu-burger.png" style="float: right; height:20px;"></a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/app/manager/manager_memberAll.jsp">회원 목록 관리</a></li>
                        <li><a href="${pageContext.request.contextPath}/app/manager/manager_memberConfirm.jsp">회원 인증 관리</a></li>
                    </ul>
                </li>
                <li>
                        <a><img src="${pageContext.request.contextPath}/assets/images/manager/apps.png">콘텐츠 관리<img src="${pageContext.request.contextPath}/assets/images/manager/menu-burger.png" style="float: right; height:20px;"></a>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/app/manager/manager_activityPost.jsp">대외활동 관리</a></li>
                            </ul>
                </li>
                <li>
                        <a><img src="${pageContext.request.contextPath}/assets/images/manager/settings.png">환경 설정<img src="${pageContext.request.contextPath}/assets/images/manager/menu-burger.png" style="float: right; height:20px;"></a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/app/manager/manager_settingBanner.jsp">배너 관리</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    <!-- </div> -->

    <div class="contents">
        <h3>대외활동 게시 요청 글</h3>
        
          <input type="button" value="선택글 상세 보기" class="activityDetail" id="activityBtn" onclick="window.open()">
          <input type="button" value="선택글 승인/거절" class="confirm_btn" id="post_btn" onclick="activityConfirm()">

          <table class="activityPost">
            <thead>
            <tr>
                <th>선택</th><th>제목</th><th>회원명</th><th>작성일</th><th>마감일</th>
            </tr>
            </thead>
            <tbody>
              <tr>
                <td>
                    <input type="checkbox" name="activityPost_btn" id="activityPost_btn1" onclick='checkSelectAllActivity(this)'>
                </td>
                <td>다큐멘터리 제작교육 수강생 모집(~10.30)</td>
                <td>시청자미디어재단 인천시청자미디어센터</td>
                <td>0000-00-00</td>
                <td>D-6</td>
              </tr>
              <tr>
                <td>
                    <input type="checkbox" name="activityPost_btn" id="activityPost_btn2" onclick='checkSelectAllActivity()'>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td>
                    <input type="checkbox" name="activityPost_btn" id="activityPost_btn3" onclick='checkSelectAllActivity()'>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td>
                    <input type="checkbox" name="activityPost_btn" id="activityPost_btn4" onclick='checkSelectAllActivity()'>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td>
                    <input type="checkbox" name="activityPost_btn" id="activityPost_btn5" onclick='checkSelectAllActivity()'>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </tbody>
          </table>
    </div>

</body>
<script src="${pageContext.request.contextPath}/assets/js/manager/manager_manager.js" charset="utf-8"></script>
</html>