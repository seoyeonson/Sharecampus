<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="${pageContext.request.contextPath}/assets/css/modal.css" rel="stylesheet">
<div class="modalWrapOpen">
    <div class="loginModal">
        <p class="modalTit">회원 가입하기</p>
        <button class="closeBtn"><img src="https://letspl.me/assets/icon/ic-close.svg" alt=""></button>
        <button class="loginBtn naver" onclick="javascript:location.href='${pageContext.request.contextPath}/app/member/join.jsp'">네이버 아이디로 <span class="changeTxt">가입</span></button>
        <button class="loginBtn kakao">카카오 계정으로 <span class="changeTxt">가입</span></button>
        <button class="loginBtn facebook">페이스북 계정으로 <span class="changeTxt">가입</span></button>
        <button class="loginBtn google">구글 계정으로 <span class="changeTxt">가입</span></button>
        <p class="loginNoticeTxt">
            소셜 로그인으로 가입 시
            <a href="">이용약관,&nbsp;</a>
            <a href="">개인정보처리방침,&nbsp;</a>
            <a href="">전자금융거래약관</a>
            에 동의함으로 처리됩니다
        </p>
        <a class="signupBtn">로그인</a>
    </div>
</div>
