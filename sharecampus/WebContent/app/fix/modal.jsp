<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="${pageContext.request.contextPath}/assets/css/main/modal.css" rel="stylesheet">
<div class="modalWrapOpen">
    <div class="loginModal">
        <p class="modalTit">회원 가입하기</p>
        <button class="closeBtn"><img src="https://letspl.me/assets/icon/ic-close.svg" alt=""></button>
        <button class="loginBtn naver">네이버 아이디로 <span class="changeTxt">가입</span></button>
        <button class="loginBtn kakao" onclick="location.href='https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=5448023a0fad890ae4a80526f46aa8c9&redirect_uri=http://localhost:8085/member/auth/kakao/callback.me&response_type=code&prompt=login'">카카오 계정으로 <span class="changeTxt">가입</span></button>
        <button class="loginBtn google" id="buttonDiv" style="padding: 0px;">구글 계정으로 <span class="changeTxt">가입</span></button>
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
<script src="https://accounts.google.com/gsi/client" async defer></script>
<script>
/*구글 로그인 서비스 */
function handleCredentialResponse(response) {
	const responsePayload = parseJwt(response.credential);
	console.log("ID: " + responsePayload.sub);
	console.log('Full Name: ' + responsePayload.name);
	console.log('Given Name: ' + responsePayload.given_name);
	console.log('Family Name: ' + responsePayload.family_name);
	console.log("Image URL: " + responsePayload.picture);
	console.log("Email: " + responsePayload.email);
	
	/* location.href="${pageContext.request.contextPath}/member/google/login.me?id=" 
			+ responsePayload.sub + "&userName=" + responsePayload.name  + "&email=" + responsePayload.email; */
	$.ajax({
		url: "${pageContext.request.contextPath}/member/google/login.me", // 컨트롤러
		type: "post",
		data: {
			id: responsePayload.sub,
			userName: responsePayload.name,
			email: responsePayload.email
		},
		contentType: "application/x-www-form-urlencoded",
		success: function(){
			location.href="${pageContext.request.contextPath}/member/checkId.me";
		}
	})
}

function parseJwt(token) {
	var base64Url = token.split('.')[1];
	var base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
	var jsonPayload = decodeURIComponent(atob(base64).split('').map(function(c) {
		return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
	}).join(''));

	return JSON.parse(jsonPayload);
};

window.onload = function() {
	google.accounts.id.initialize({
		client_id: "581200011022-0vr909a9ih0otuv4rptstg3dtde90ltf.apps.googleusercontent.com",
		callback: handleCredentialResponse
	});
	google.accounts.id.renderButton(
	    document.getElementById("buttonDiv"),
	    {theme: "filled_blue", text: "구글 계정으로 가입", size: "large", width: 322 , height: 50}  // 로고 커스터마이징
  	);

	/* google.accounts.id.prompt(); // 원탭 화면으로 출력 */
}


</script>

