<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/register.css">
</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp" />
    <div class="container-v2">
        <div class="wrapper-v2">
            <div class="register-wrap">
                <h2 class="register-title">회원가입</h2>
                <form action="" class="register">
                    <div class="email-input">
                       <div class="label-wrap">
                            <label for="" class="label">
                                이메일계정
                                <span class="label1">*</span>
                            </label>
                        </div>
                        <div class="input-wrap">
                            <input class="input-wrap" placeholder="이메일 주소를 입력해주세요" style="outline: none">
                            <!-- <p class="default-msg">이메일을 입력해주세요</p> -->
                        </div> 

                    </div>
                    <div class="password-input-wrap">
                        <div class="label-wrap">
                             <label for="" class="label">
                                 비밀번호
                                 <span class="label1">*</span>
                             </label>
                         </div>
                         <div class="input-wrap">
                             <input class="input-wrap" placeholder="영문/숫자/특수문자 포함 8자 이상" style="outline: none">
                         </div> 
                         <!-- <span class="eye-icon"><img src="https://drv987r6zjtyw.cloudfront.net/static/v2/svg/account/ic_eye_off.svg" alt=""></span> -->
                     </div>
                     <div class="password-input-wrap">
                        <div class="label-wrap">
                             <label for="" class="label">
                                 비밀번호 확인
                                 <span class="label1">*</span>
                             </label>
                         </div>
                         <div class="input-wrap">
                             <input class="input-wrap" placeholder="비밀번호를 다시 입력해주세요" style="outline: none">
                         </div> 
                         <!-- <span class="eye-icon"><img src="https://drv987r6zjtyw.cloudfront.net/static/v2/svg/account/ic_eye_off.svg" alt=""></span> -->
                     </div>
                     <div class="name-input-wrap">
                        <div class="label-wrap">
                             <label for="" class="label">
                                 이름
                                 <span class="label1">*</span>
                             </label>
                         </div>
                         <div class="input-wrap">
                             <input class="input-wrap" placeholder="이름을 입력해주세요" style="outline: none">
                         </div> 
                     </div>
                     <div class="phone-input-wrap">
                        <div class="label-wrap">
                             <label for="" class="label">
                                 휴대전화
                                 <span class="label1">*</span>
                             </label>
                         </div>
                         <div class="input-wrap">
                             <input class="input-wrap" placeholder="010-0000-0000" style="outline: none,
                             ">
                         </div> 
                     </div>
                     <div class="gender-button-wrap">
                        <div class="label-wrap">
                            <label for="" class="label">
                                성별
                                <span class="label1">*</span>
                            </label>
                        </div>
                        <div class="input-wrap">
                            <div class="gender-btn-wrap">
                                <button tabindex="0" type="button" value="" class="gender-btn">남자</button>
                                <button tabindex="0" type="button" value="" class="gender-btn">여자</button>
                            </div>
                        </div>
                     </div>
                     <div class="agree-check-wrap">
                        <ul class="agree">
                            <li class="agree">
                                <p class="agree-icon" tabindex="0"></p>
                                <p class="agree2">
                                    [필수]
                                    <a class="agree3" target="_blank" href="">이용약관</a>
                                    에 동의합니다.
                                </p>
                            </li>
                            <li class="agree">
                                <p class="agree-icon" tabindex="0"></p>
                                <p class="agree2">
                                    [필수]
                                    <a class="agree3" target="_blank" href="">개인정보처리방침</a>
                                    에 동의합니다.
                                </p>
                            </li>
                        </ul>
                     </div>
                     <div class="register-btn">
                        <button type="button" tabindex="0" style="background-color: rgb(216, 216, 216);">가입하기</button>
                     </div>
                </form>
            </div>
        </div>


    </div>
	<jsp:include page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>

$(function() {  
$('.gender-btn').click(function(){
    $(this).css({color: "#4745ff"});

  });
});







</script>
<script src="${pageContext.request.contextPath}/assets/js/modal.js"></script>
</html>