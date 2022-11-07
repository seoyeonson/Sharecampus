<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.sharecampus.curriculum.vo.CurriculumVO"%>
<%@ page import="com.sharecampus.curriculum.dao.CurriculumDAO"%>
<%
int cnt = (Integer)request.getAttribute("result");
int curri_num = Integer.parseInt(request.getParameter("curri_num"));
%>
<%
if (cnt == 0) {
%>
<script>
		alert("수정 실패");
		history.back();
	</script>
<%
} else {
%>
<script>
		alert("수정 성공");
		location.href = "/app/curriculum/curriculum_detail.do?curri_num=<%=curri_num%>";
</script>
<%
}
%>