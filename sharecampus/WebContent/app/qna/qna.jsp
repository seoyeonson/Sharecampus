<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>문의게시판</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/qna/qna.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/qna/qna_2.css">
<body>
	<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp" />
	<!-- Content -->
	<div id="loginContainer">
		<div class="member-wrap member_input-wrap large">
			<div class="member-com_title">
				<h1 class="qnatitle">Q&A</h1>
				<p class="com_title_sub">
					쉐어캠퍼스에서 어떤 점이 궁금하신가요? <br> 친절히 답해드리겠습니다.
				</p>
			</div>
			<form class= "gform" method="POST" data-email="jihyeobg00@naver.com" 
				action = https://script.google.com/macros/s/AKfycbwumm3Lvb0QtAPxhTdlZdl1yJzMWX9IMSarNHifG-pug6PVv412KoLYN0ifeSVOMW3e/exec>
			<div class="member-form">
				<div class="text_form">
					<label for="contactTitle">제목</label> <input type="text"
						name="문의 제목" id="contactTitle" placeholder="제목을 입력해주세요.(최대 20자)">
				</div>
				<div class="text_form">
					<label for="contactTitle">E-Mail</label> <input type="email"
						name="답장받을 이메일" id="email" placeholder="답변받을 이메일을 작성해주세요.">
				</div>

				<div class="text_form">
					<label for="contactContent">설명</label>
					<textarea id="contactContent" name="내용"
						placeholder="내용을 입력해주세요.(최대 1000자)"></textarea>
				</div>
				<p>
					<input type="submit" id="inquire_btn"
						class="width100_member_btn orange_btn" style="cursor: pointer"
						value="문의하기">
				</p>
			</div>
			<div style="display:none" class="thankyou_message">
 		<h2><em>Thanks</em> 문의해주셔서 감사합니다! 보다 노력하는 ShareCampus가 되겠습니다.
 		</h2>
		</div>
			</form>
		</div>
	</div>
	
	<jsp:include page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
	<jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
	<script data-cfasync="false" type="text/javascript"
	src="https://cdn.rawgit.com/dwyl/html-form-send-email-via-google-script-without-server/master/form-submission-handler.js"></script>
   
</body>
<script src="${pageContext.request.contextPath}/assets/js/modal.js"></script>
</html>