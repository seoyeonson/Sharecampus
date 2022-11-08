<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
        <jsp:include
		page="${pageContext.request.contextPath}/app/manager/managerindex.jsp" />
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
            <c:choose>
					<c:when test="${not empty memberAll and fn:length(memberAll) > 0}">
						<c:forEach var="member" items="${memberAll}">
							<tr>
								<td><c:out value="${member.getMemberNum()}" /></td>
								<td><c:out value="${member.getMemberNickname()}" /></td>
								<td><c:out value="${member.getMemberSignupDate()}" /></td>
								<td><c:out value="${member.getMemberType()}" /></td>
								<td><button class="removeList" onclick="remove_tr(this)">회원 삭제</button></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5" align="center">준비중입니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
              <%-- <tr>
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
              </tr> --%>
            </tbody>
          </table>
    </div>

</body>
<script src="${pageContext.request.contextPath}/assets/js/manager/manager_manager.js" charset="utf-8"></script>
</html>