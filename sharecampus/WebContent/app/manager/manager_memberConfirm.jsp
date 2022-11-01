<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인증 관리</title>

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
		<h3>회원 인증 관리</h3>
		<input type="button" value="선택회원 승인/거절" class="confirm_btn" id="selectBtn" onclick="confirmMember()">

          <table id="confirm">
            <thead>
            <tr>
                <th>
                    <input type="checkbox" name="selectall" id="all-check" onclick='selectAll(this)'>
                </th>
                <th>분류</th><th>회원번호</th><th>회원명</th><th>작성일</th><th>첨부파일</th><th>승인 여부</th>
            </tr>
            </thead>
            <tbody>
              <tr onclick="checkImg()">
                <td>
                    <input type="checkbox" name="check_btn" id="check1" onclick='checkSelectAll()'>
                </td>
                <td>학생</td>
                <td>0</td>
                <td>000</td>
                <td>0000-00-00</td>
                <td class="confirmImage">
                    <a href="https://mblogthumb-phinf.pstatic.net/20160105_282/orange4k_14519221726259lSiM_PNG/1.png?type=w800" target="_blank">파일 확인</a>
                </td>
                <td class="status"><span>승인 전</span></td>
              </tr>
              <tr>
                <td>
                    <input type="checkbox" name="check_btn" id="check2" onclick='checkSelectAll()'>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td class="confirmImgage" onclick="checkImg()"></td>
                <td class="status"><span>승인 전</span></td>
              </tr>
              <tr>
                <td>
                    <input type="checkbox" name="check_btn" id="check3" onclick='checkSelectAll()'>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td class="confirmImgage" onclick="checkImg()"></td>
                <td class="status"><span>승인 전</span></td>
              </tr>
              <tr>
                <td>
                    <input type="checkbox" name="check_btn" id="check4" onclick='checkSelectAll()'>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td class="confirmImgage" onclick="checkImg()"></td>
                <td class="status"><span>승인 전</span></td>
              </tr>
              <tr>
                <td>
                    <input type="checkbox" name="check_btn" id="check5" onclick='checkSelectAll()'>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td class="confirmImgage" onclick="checkImg()"></td>
                <td class="status"><span>승인 전</span></td>
              </tr>
            </tbody>
          </table>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/manager/manager_manager.js" charset="utf-8"></script>
</html>