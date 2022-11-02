<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
	$(document).ready(function(){
		var choice = confirm("회원정보가 없습니다. 바로 회원가입 하시겠습니까?");
		var url = '${pageContext.request.contextPath}/member/joinOk.me?choice=' + choice;
		console.log(url);
		location.href= url;
	})
</script>