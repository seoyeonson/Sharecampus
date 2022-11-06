<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/community/community.css">
</head>
<body>
	<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp" />
		<section class="communitySection">
        	<div class="community_header">
            	<h1>
                	<span class="smTxt" style="font-size: 0.9rem;">말해봐요</span>
                	<span class="bgTxt">나의 아이디어</span>
            	</h1>
        	</div>
	        <div class="community">
	            <div class="communityWrap">
	                <form action="${pageContext.request.contextPath}/community/listDuOK.co" name="updateForm" method="post">
	                    <div class="communityInputSection">
	                        <div class="communityInputWrap">
	                            <textarea name ="community_content" placeholder="커뮤니티에서 가볍게 이야기를 시작해보세요" rows="2" maxlength="1000" id="textarea" style="border: none" >
<c:out value="${board.getBoardContent()}"/></textarea>
	                            <div class="btnWrap" id="btnWrap">
	                                <p class="count" id="count_cnt" >
	                                    <span>(0/1000)</span>
	                                </p>
	                                <button class="grayBtn" value="글쓰기" onclick="send()" >수정</button>
	                            </div>
	                        </div>
	                    </div>
	                </form>
				</div>
			</div>
   	 	</section>
    <jsp:include
		page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>

$('#textarea').keydown(function() {
    $('#btnWrap').css("display", "flex");
});

$(document).ready(function() {
$('#textarea').on('keyup', function() {
    $('#count_cnt').html("("+$(this).val().length+" / 1000)");

    if($(this).val().length > 1000) {
        $(this).val($(this).val().substring(0, 1000));
        $('#count_cnt').html("(1000 / 1000)");
    }
});
});


function send(){
	let form = document.updateForm;
	if(!form.boardContent.value){
		form.boardTitle.focus();
		return;
	}
	
	form.submit();
}

</script>
<script src="${pageContext.request.contextPath}/assets/js/main/modal.js"></script>
</html>