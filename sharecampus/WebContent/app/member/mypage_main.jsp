<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap"
	rel="stylesheet">
<title>마이페이지</title>
</head>
<jsp:include
	page="${pageContext.request.contextPath}/app/fix/header.jsp" />
<section class="curriculumSection">
	<div>
		<div class="curriculum_header">
			<h1>
				<span class="smTxt" style="font-size: 0.9rem;">LET'S see</span> <span
					class="bgTxt">마이페이지</span>
			</h1>
		</div>
		<div id="container">
			<jsp:include
				page="${pageContext.request.contextPath}/app/member/mypage_menu.jsp" />
			<main id="content" role="main" class="more" style="border: none">
				<section class="sMypage">
					<!-- 오른쪽 배너 타이틀 -->
					<h1 class="sMypageTitle"
						style="background-color: #3393f4; color: #fff;">내 정보</h1>
					<!-- 오른쪽 배너 타이틀 -->
					<div>
						<div class="sMypageProfile">
							<h2 class="sMypageSubTitle">사용중인 프로필</h2>
							<div class="sMypageProfileBox">
								<!-- 프로필 이미지 미리보기 설정 -->
								<form action="${pageContext.request.contextPath}/member/imagechange.me" name="imageChangeForm" method="post" enctype="multipart/form-data">
									<div class="profileList">
										<label for="input_image">
										<c:choose>
											<c:when test="${memberInfo.getMemberImgName() != 'default'}">
												<div style="background-image: url('${getContext.request.contextPath}/upload/${memberInfo.getMemberImgName()}')"></div>
											</c:when>										
											<c:otherwise>
												<div style="background-image: url(${pagePath.request.contextPath}/assets/images/mypage/no_image.jpg)"></div>
											</c:otherwise>										
										</c:choose>
										</label> 
										<input type="file" id="input_image" name="memberImgName" style="display: none;">
									</div>
								</form>
								<!-- 프로필 이미지 미리보기 설정 끝-->
							</div>
							<!-- 프로필 이미지 눌러 해당 주소를 DB로 -->
							<div class="sMypageProfileBtnArea">
								<button type="button" class="uButton -sizeS -confirm3" id="changeImage">관리</button>
							</div>
							<!-- 프로필 이미지 눌러 해당 주소를 DB로 -->
						</div>
						<div class="sMypageAccount">
							<h2 class="sMypageSubTitle">현재 로그인 계정</h2>
							<div class="sMypageAccountCont">
								<div class="sMypageAccountItem _phoneTextPanel"
									style="display: none;"></div>
								<div class="sMypageAccountItem _emailActionPanel">
									<label class="label">현재 닉네임</label>
									<div class="content">
										<div class="uInput -simpleLine"
											style="width: 390px; padding-left: 20px; border-bottom: #ebebeb;">
											<!-- 닉네임 주소 -->
											<h3 id="now_nickname">
												<c:out value="${memberInfo.getMemberNickname()}" />
											</h3>
											<!-- 닉네임 주소 -->
										</div>
									</div>
								</div>
								<div class="sMypageAccountItem _emailActionPanel">
									<label class="label">현재 이메일</label>
									<div class="content">
										<div class="uInput -simpleLine"
											style="width: 390px; padding-left: 20px; border-bottom: #ebebeb;">
											<!-- 이메일 주소 -->
											<h3 id="now_email">
												<c:out value="${memberInfo.getMemberId()}" />
											</h3>
											<!-- 이메일 주소 -->
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="sMypageAccount">
							<h2 class="sMypageSubTitle">회원 정보 수정</h2>
							<div class="sMypageAccountCont">
								<div class="sMypageAccountItem _phoneTextPanel"
									style="display: none;"></div>
								<div class="sMypageAccountItem _emailActionPanel">
									<label class="label" for="email_view630">닉네임</label>
									<div class="content">
										<div class="uInput -simpleLine"
											style="width: 390px; border-bottom: #ebebeb;">
											<!-- 닉네임 주소 입력 -->
											<form action="${getContext.request.contextPath}/member/updateNickname.me" name="updateNicknameForm" method="POST">
												<input type="text" id="memberNickname" name="memberNickname" placeholder="변경하고싶은 닉네임을 입력해주세요" value="" class="_inputEmail">
											</form>
											<!--  닉네임 주소 입력 -->
										</div>
									</div>
									<div class="btn">
										<button type="button" class="uButton -sizeS -confirm"
											id="btnUpdateNickname">확인</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 소속 인증 서비스 -->
						<div class="sMypageConnectOrganization">
							<div class="sMypageConntetTitleBox">
								<h2>소속 인증</h2>
							</div>
							<div class="sMypageConnectDocumnet">
								<div class="icon">
									<span class=""> <span class="gSrOnly">첫번째 연동</span>
									</span>
								</div>
								<c:choose>
									<c:when test="${memberInfo.getMemberAuth() == 0}">
										<img class="id_icon" src="${pageContext.request.contextPath}/assets/images/mypage/engine-warning.png">
										<div class="content off">증명서류를 제출할 수 있습니다.</div>
									</c:when>
									<c:when test="${memberInfo.getMemberAuth() == 1}">
										<div class="content off">관리자 인증을 대기중입니다.</div>									
									</c:when>
									<c:when test="${memberInfo.getMemberAuth() == 2}">
										<div class="content off">인증이 완료되었습니다.</div>									
									</c:when>
									<c:otherwise>
										<div class="content off">인증이 취소되었습니다. 다시 증명서류를 제출해주세요.</div>								
									</c:otherwise>
								</c:choose>
							</div>
							<c:if test="${memberInfo.getMemberAuth() == 0 || memberInfo.getMemberAuth() == 3}">
								<div class="btn" style="display: flex; justify-content: flex-end;">
									<form action="${getContext.request.contextPath}/member/connectproof.me" name="memberAuthForm" method="post" enctype="multipart/form-data">
										<!-- 보낼 파일을 저장함 -->
										<input type="file" name="memberAuthImgName" class="document_file" style="margin-right: 150px;">
										<!-- 해당 파일을 DB로 보냄-->
										<button type="button" id="memberAuthBtn" class="uButton -sizeS -confirm3 _btnConnectDocument">심사요청</button>
									</form>
								</div>
							</c:if>
						</div>
				</section>
			</main>
		</div>
	</div>
</section>
<jsp:include
	page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
<jsp:include
	page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>

// 닉네임 업데이트
$("#btnUpdateNickname").on("click", function(){
	let check = false;
	let memberNickname = $("#memberNickname").val();
	console.log(memberNickname);
	$.ajax({
		url: "${getContext.request.contextPath}/member/checkNickname.me",
		data: {memberNickname: memberNickname},
		success: function(result){
			console.log("결과 정보 : " + result);
			
			if(result == "false"){
				alert("중복된 닉네임입니다.");
				check = false;
			} else {
				check = confirm("닉네임을 바꾸시겠습니까?");
			}
			
			if(check){
				if($("#memberNickname").val() != ""){
					updateNicknameForm.submit();	
				} else {
					$("#memberNickname").focus();
				}		
			} else {
				$("#memberNickname").val("");
			}
		}
	});
});

//미리보기 이미지 
const file = document.querySelector("input[type='file']");
    
file.addEventListener("change", function(e){
    var reader = new FileReader();
    reader.readAsDataURL
    
    (e.target.files[0]);
    reader.onload = function(e){
        let url = e.target.result;

        if(url.includes("image")){
            document.querySelector("label div").style.backgroundImage = "url(" + url +")";
        }else{
            document.querySelector("label div").style.backgroundImage = "url(${pagePath.request.contextPath}/assets/images/mypage/no_image.jpg)";
        }
    }
});

// 프로필 이미지 변경
$("#changeImage").on("click", function(){
	var check = confirm("프로필 이미지를 변경하시겠습니까?");
	
	if(check){
		imageChangeForm.submit();
	} else {
		alert("이미지 등록을 취소하셨습니다.");
		location.href = "${pagePath.request.contextPath}/member/mypageOk.me";
	}
});

// 인증 이미지 등록
$("#memberAuthBtn").on("click", function(){
	var check = confirm("인증 이미지를 등록하시겠습니까?");
	
	if(check){
		memberAuthForm.submit();
	} else {
		alert("이미지 등록을 취소하셨습니다.");
		location.href = "${pagePath.request.contextPath}/member/mypageOk.me";
	}
});
  
</script>
</html>