<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스터디</title>
<style>
	.backColor {
		height: 230px;
	} 
</style>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/study/studyMain.css">
<script src="${pageContext.request.contextPath}/assets/js/study/studyMain.js"></script>
<body>
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/header.jsp" />
	<section>
		<div class="commonContentViewHeader">
			<h1 class="projectView">
				<span class="smTxt">스터디</span> <span class="bgTxt">스터디</span>
			</h1>
		</div>
		<div class="projectView projectAllGridView">
			<h1>전체 스터디</h1>
			<div class="searchOption">
				<select class="smSelect" id="area-container" name="area">

					<option value="KR00">지역 미지정</option>
					<option value="KR01">서울특별시</option>
					<option value="KR02">경기도</option>
					<option value="KR03">부산광역시</option>
					<option value="KR04">인천광역시</option>
					<option value="KR05">대구광역시</option>
					<option value="KR06">경상남도</option>
					<option value="KR07">경상북도</option>
					<option value="KR08">대전광역시</option>
					<option value="KR09">충청남도</option>
					<option value="KR10">충청북도</option>
					<option value="KR11">전라남도</option>
					<option value="KR12">전라북도</option>
					<option value="KR13">광주광역시</option>
					<option value="KR14">강원도</option>
					<option value="KR15">울산광역시</option>
					<option value="KR16">제주특별자치도</option>
					<option value="KR17">세종특별자치시</option>
				</select>
				<select class="smSelect" id="depart-container" name="depart" >
					<option value="00">관심분야</option>
					<option value="01">여행/호텔/관광</option>
					<option value="02">언론/미디어</option>
					<option value="03">문화/역사</option>
					<option value="04">행사/페스티벌</option>
					<option value="05">교육</option>
					<option value="06">디자인/사진/예술/영상</option>
					<option value="07">경제/금육</option>
					<option value="08">경영/컨설팅/마케팅</option>
					<option value="09">정치/사회/법률</option>
					<option value="10">체육/헬스</option>
					<option value="11">의료/보건</option>
					<option value="12">뷰티/미용/화장품</option>
					<option value="13">과학/공학/기술/IT</option>
					<option value="14">요리/식품</option>
					<option value="15">창업/자기계발</option>
					<option value="16">환경/에너지</option>
					<option value="17">콘텐츠</option>
					<option value="18">사회공헌/교류</option>
					<option value="19">유통/물류</option>
					<option value="20">기타</option>
				</select>
				<div class="StudyNew">
					<button class="btn123" onclick="location.href='${pageContext.request.contextPath}/study/write.su';">글쓰기</button>
				</div>
			</div>
			<div class="projectGridView">
				<!-- 전체 글상자 -->
				<!-- 단일 글 상자 시작 -->
			 	<c:forEach var="study" items="${studies}"> 
					<div class="projectGridWrap" onclick="location.href='${pageContext.request.contextPath}/study/listDs.su?studyNum=${study.getStudyNum()}'">
						<div class="projectTopInfo">
							<div class="top">
								<div class="badgeWrap">
									<div class="topBadge purpleLight">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-badge_project_update.png"
                                            alt="업데이트있는 프로젝트" /> -->
									</div>
									<div class="badge blue">
										<h2><c:out value="${study.getStudyArea()}" /></h2>
									</div>
								</div>
							</div>
						</div>
						<div class="projectBottomInfo backColor">
							<div class="txtWrap studyTxtWrap">
								<h3 class="category"><c:out value="${study.getStudyDepart()}" /></h3>
								<h2 class="tit"><c:out value="${study.getStudyTitle()}" /></h2>
							</div> 
						</div>
					<div class="projectView projectNewsWrap"></div>
					<div class="projectBlueBg"></div>
				</div>
				 </c:forEach>
			</div>
		</div>
			<!-- 페이징 처리 -->
			<table style="font-size:1.3rem; margin: auto;">
			<tr align="center" valign="middle">
				<td class="web-view">
					<c:if test="${prev}">
						<a href="${pageContext.request.contextPath}/study/list.su?page=${startPage - 1}">&lt;</a>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:choose>
							<c:when test="${not (i eq page)}">
								<a href="${pageContext.request.contextPath}/study/list.su?page=${i}">
									<c:out value="${i}"/>&nbsp;&nbsp;
								</a>
							</c:when>
							<c:otherwise>
									<c:out value="${i}"/>&nbsp;&nbsp;
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${next}">
						<a href="${pageContext.request.contextPath}/study/list.su?page=${endPage + 1}">&gt;</a>
					</c:if>
				</td>
			</tr>
		</table>			
	</section>

	
	
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/study/studyFind.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main/modal.js"></script>
<script>
let backs = $(".backColor");
let letters = ['d0e5ff', 'fff9c4', 'f5f9e7', 'FFF0F5','d7efd3','bedef9','f8ced7'];

$.each(backs, function(e){
	let color = '#';
	// 원하는 색상을 'letters'에 지정한다. 변수는 맘대로 변경해도 무관하다.
	color += letters[Math.floor(Math.random() * letters.length)]
	$(this).css("background-color", color);
});




</script>
</html>