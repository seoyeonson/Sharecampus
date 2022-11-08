<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
        <jsp:include
		page="${pageContext.request.contextPath}/app/manager/managerindex.jsp" />
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
                <%-- <td>
                    <input type="checkbox" name="check_btn" id="check1" onclick='checkSelectAll()'>
                </td>
                <td>학생</td> --%>
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
							<td colspan="7" align="center">준비중입니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
                <%-- <td class="confirmImage">
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
              </tr> --%>
            </tbody>
          </table>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/manager/manager_manager.js" charset="utf-8"></script>
</html>