<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
	$(document).ready(function(){
		if(${not empty loginOK}){
			alert("로그인 후 이용가능합니다.");		
		}
		
		location.href = "${pageContext.request.contextPath}/main/main.mn";
	})
</script>
