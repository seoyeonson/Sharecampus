<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.sharecampus.curriculum.vo.*"%>
<%@ page import="java.util.*"%>
<%
List<CurriculumVO> list = (List<CurriculumVO>) request.getAttribute("list");

if (list == null || list.size() == 0) {
%>
<script>
	alert("해당 정보가 삭제되었거나 존재하지 않습니다.");
	history.back();
</script>
<%
	return;
}
%>
<%
CurriculumVO cvo = list.get(0);
int cnum = cvo.getCurri_num();
int mnum = cvo.getMember_num();
String title = cvo.getCurri_title();
String unidert = cvo.getCurri_uni_dert();
String field = cvo.getCurri_field();
String division = cvo.getCurri_division();
int credits = cvo.getCurri_credits();
String grade = cvo.getCurri_grade();
String professor = cvo.getCurri_professor();
int satisfactionrating = cvo.getCurri_satisfaction_rating();
int examrating = cvo.getCurri_exam_rating();
int assignmentrating = cvo.getCurri_assignment_rating();
int professorrating = cvo.getCurri_professor_rating();
Date registdate = cvo.getCurri_regist_date();
String contents = cvo.getCurri_contents();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title><%=title %>글 수정</title>
</head>
<body>
<jsp:include
		page="${pageContext.request.contextPath}/app/fix/header.jsp" />
	<h1><%=title %> 수정</h1>
	<hr>
	<form name="frm" action="updateOk.do" method="post" onsubmit="return chkSubmit()">
		<input type="hidden" name="cnum" value="<%=cnum %>"/>
		<strong>제목</strong>
		<input type="text" name="title" value="<%=title %>"/><br>
		<strong>도서 가격</strong>
		<input type="number" name="price" value="<%=price %>"/><br>
		<strong>등록일</strong> <%=regDate %><br><br>
		<strong>요약</strong><br>
		<textarea name="summary"><%=summary %></textarea>
		<br><br>
		<input type="submit" value="수정하기"/>	
	</form>
	
	<br><hr><br>
	<button onclick="histroy.back()">뒤로가기</button>
	<button onclick="location.href='list.do'">목록으로</button>
	
	<script>
	function chkSubmit() {
		frm = document.forms['frm'];

		let title = frm['title'].value.trim();
		let price = frm['price'].value.trim();

		if (title == '') {
			alert("도서 제목은 반드시 입력해야 합니다");
			frm['title'].focus();
			return false;
		}
		
		if (price < 0 || price == '' || isNaN(price)) {
			alert("도서 가격은 0원 이상이어야 합니다");
			frm['price'].focus();
			return false;
		}

		return true;
	}
	</script>
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
</body>
</html>