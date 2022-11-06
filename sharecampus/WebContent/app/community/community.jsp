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
	                <form action="${pageContext.request.contextPath}/community/listDi.co" name="writeForm" method="post">
	                    <div class="communityInputSection">
	                        <div class="communityInputWrap">
	                            <textarea name ="community_content" placeholder="커뮤니티에서 가볍게 이야기를 시작해보세요" rows="2" maxlength="1000" id="textarea" style="border: none" ></textarea>
	                            <div class="btnWrap" id="btnWrap">
	                                <p class="count" id="count_cnt" >
	                                    <span>(0/1000)</span>
	                                </p>
	                                <!-- <button disabled="disabled"></button> -->
	                                <button class="grayBtn" value="글쓰기" onclick="send()" >등록</button>
	                            </div>
	                        </div>
	                    </div>
	                </form>
	                 	<!-- 피드시작 -->
					<table style="width: 100%">
					<c:choose>
						<c:when test="${not empty communitys and fn:length(communitys) > 0}">
							<c:forEach var="community" items="${communitys}">
		                	<tr>
		                	<td>
		                		<div class="communityFeedSection">
		                    		<div class="communityFeedWrap">
		                     			<div class="communityFeedContentWrap">
		                        			<div class="top2">
		                            			<div class="left">
			                                    	<div class="profileThumb">
			                                       		<img src="${pageContext.request.contextPath}/assets/images/mypage/no_image.jpg">
			                                    	</div>
		                           				</div>
		                            			<div class="right5">
						                        	<h2 class="profileName"><c:out value="${community.getMemberNickname()}"/></h2>
						                        	<!-- 작성자 -->
						                            <span><c:out value="${community.getCommunityRegistDate()}"/></span>
						                        	<!-- 작성일 --> 
		                            			</div>
		                        			</div>
		                        			<div class="bottom">
		                            			<div class="feedContents">
		                                			<h3>
		                                    			<pre style="font-size: 0.875rem;  height: auto;" class="text">
<c:out value="${community.getCommunityContents()}"/>
		                                    			</pre>
		                                			</h3>
		                                			<div class="bottom2">
		                                    			<div class="replyFoldRight">
		                                    			 	<c:if test="${sessionScope.memberNum == community.getMemberNum()}">
		                                        				<button class="edit" style="color : #c9c9d9">수정</button>&nbsp;ㅣ&nbsp;
		                                    					<button class="remove_popupBtn" style="color : #c9c9d9">삭제</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                    				</c:if>
		                                    				<div class="remove_popup">
						                                        <div class="remove_text"><h2>정말삭제하시겠어요?</h2><br>
						                                        <p>삭제한 글은 다시 불러올 수 없습니다.</p></div>
						                                        <button class="remove_close" id=""><img src="https://letspl.me/assets/icon/ic-close.svg" alt=""></button>
						                                        <button class="reRemove">삭제</button>
		                                    				</div>
		                                  				</div>
		                                			</div>
		                            			</div>
		                        			</div>
		                     			</div>
		                     		</div>
		                		</div>
	                		</td>
		                	</tr>
							</c:forEach>
						</c:when>
							<c:otherwise>
								<tr>
									<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>
	                </table>
                    <!-- 피드끝 -->  
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

$("#replyFold").click(function(){
    // console.log($(".replyFold")[0].innerHTML)
$("#communityReplyTab").toggle(function() {});
if ($(this).text() == "댓글 열기") {
$(this).text("댓글 닫기");
} else {
$(this).text("댓글 열기");
}

});

$(".remove_popupBtn").click("on", function(e) {
$(".remove_popup").css("display", "block")
});

$(".remove_close").click("on", function(i, v){
$(".remove_popup").css("display", "none");
});

function send(){
    if(!writeForm.community_content){
       alert("내용을 작성해주세요.");
       return;
    }
    
    writeForm.submit();
 }

</script>
<script src="${pageContext.request.contextPath}/assets/js/main/modal.js"></script>
</html>