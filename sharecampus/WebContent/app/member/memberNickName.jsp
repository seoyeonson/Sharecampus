<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/register/register.css">
</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp" />
    <div class="container-v2">
        <div class="wrapper-v2">
            <div class="register-wrap">
                <h2 class="register-title">닉네임 설정</h2>
                <form name="registForm" action="${pageContext.request.contextPath}/member/joinOk.me"  class="register" method="GET">
                    <div class="email-input">
                       <div class="label-wrap">
                        </div>
                        <div class="input-wrap">
                            <input type="text" class="input-wrap" name="memberNickname" placeholder="닉네임을 입력해주세요." style="outline: none" value="<c:out value='${member_nickname}'/>">
                            <p id="result"></p>
                        </div> 
                    </div>
                     <div class="register-btn">
                        <button type="button" id="joinOkBtn" tabindex="0" style="background-color: rgb(216, 216, 216);" onclick="send()">가입하기</button>
                     </div>
                </form>
            </div>
        </div>


    </div>
	<jsp:include page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
let $memberNickname = $("input[name='memberNickname']");
let memberNickname = $memberNickname.val();
let check = false;

$(document).ready(checkNickname(memberNickname));

$($memberNickname).on("blur", function(e){
	if(e.target.value == ""){
		$("#result").css("color", "red");
		$("#result").text("닉네임을 입력해주세요.");	
		$("#joinOkBtn").css("background-color", "rgb(216, 216, 216)");
		$("#result").focus();
		check = false;
	} else {
		checkNickname($(this).val());		
	}
});

function checkNickname(memberNickname){
	
	check = false;
	console.log(memberNickname);
	
	$.ajax({
		url: "${getContext.request.contextPath}/member/checkNickname.me",
		data: { memberNickname : memberNickname },
		success: function(result){
			console.log(result);
			let msg, color, back;
			
			if(result == "true"){
				msg = "사용 가능한 닉네임입니다.";
				color = "blue";
				check = true;
				back = "#3393f4";
			}else{
				msg = "중복된 닉네임입니다.";
				color = "red";
				back = "rgb(216, 216, 216)";
			}
			
			$("#result").css("color", color);
			$("#result").text(msg);		
			$("#joinOkBtn").css("background-color", back);
		},
		error: function(a, b, c){
			console.log(a, b, c);
		}
	})
}

function send(){
	if(!check){
		return
	}
	registForm.submit();
}
</script>
<script src="${pageContext.request.contextPath}/assets/js/main/modal.js"></script>
</html>