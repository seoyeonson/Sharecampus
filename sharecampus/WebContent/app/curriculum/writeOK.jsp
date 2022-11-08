<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.sharecampus.curriculum.vo.CurriculumVO" %>
<%@ page import="com.sharecampus.curriculum.dao.CurriculumDAO" %>
<%
	int cnt = (Integer)request.getAttribute("result");
	CurriculumVO cvo = (CurriculumVO)request.getAttribute("cvo");
	
%>
<% if (cnt == 0) { %>
	<script>
		alert("등록 실패");
		history.back();
	</script>
<% } else { %>
	<script>
		alert("등록 성공");
		location.href = "/app/curriculum/curriculum_detail.do?curri_num=<%=cvo.getCurri_num()%>";

	</script>
<% } %>