<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.sharecampus.curriculum.vo.*"%>

<%
List<CurriculumVO> list = (List<CurriculumVO>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>커리큘럼</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/curriculum/curriculum.css">
<link rel="stylesheet"	
	href="${pageContext.request.contextPath}/assets/css/main/modal.css">
<script
	src="${pageContext.request.contextPath}/assets/js/curriculum/curriculum.js"></script>
</head>
<body>
	<div>
		<jsp:include
		page="${pageContext.request.contextPath}/app/fix/header.jsp" />
		<!-- main start -->
		<main>
			<section class="curriculumSection">
				<!-- 메뉴 헤더 -->
				<div class="curriculum_header">
					<h1>
						<span class="smTxt" style="font-size: 0.9rem;">나눠봐요</span> <span
							class="bgTxt">커리큘럼</span>
					</h1>
				</div>
				<!-- 커리큘럼 Wrap -->
				<div class="curriculum-list_wrap" style="height: auto !important;">
					<!-- 총 커리큘럼 개수 -->
					<div class="curriculum-title_wrap">
						<h3 class="list-title">
							총 <span id="curriculum_count" class="filter-search-result">1000+</span>건의대학
							리뷰
						</h3>
						<!-- <a class="curriculum-regist" href="curriculum_regist.jsp"> <span>커리큘럼
								작성</span> -->
						<a class="curriculum-regist" href="/app/curriculum/curriculum_regist.do"> <span>커리큘럼
								작성</span>
						</a>
					</div>
					<!-- 과 카테고리 선택 -->
					<div class="departments">
						<a href="" class="department checked">경영·경제</a> 
						<a href="" class="department">컴퓨터·전기·전자</a> 
						<a href="" class="department">기계</a>
						<a href="" class="department">건축·토목</a>
						<a href="" class="department">재료·산업·안전</a> 
						<a href="" class="department">농림·수산·축산</a>
						<a href="" class="department">사회과학</a> 
						<a href="" class="department">간호</a> 
						<a href="" class="department">화공·에너지</a>
						<a href="" class="department">화학·생명·환경</a> 
						<a href="" class="department">수학·물리·천문</a> 
						<a href="" class="department">교육</a>
						<a href="" class="department">언어·문학</a> 
						<a href="" class="department">인문학</a> 
						<a href="" class="department">미술·응용예술</a>
						<a href="" class="department">생활과학</a> 
						<a href="" class="department">음악·연극·영화</a> 
						<a href="" class="department">체육·무용</a>
					</div>
					<!-- 커리큘럼 목록 -->
					<div class="result-view">
						<ul id="curriculum_ul"
							class="curriculum-list curriculum_min_height flex">
							<!-- curriculum content start -->

							<%
							if (list != null) {
								for (CurriculumVO cvo : list) {
							%>
							<li>
								<div class="curriculum-list_box">
									<div class="curri_img"></div>
									<div class="top-curriculum-info">
										<!-- <img
											src="https://d1qzykz9iz00c7.cloudfront.net/static/logo/logo_c290.jpg"
											class="university-logo ls-is-cached lazyloaded"> --> 
											<img src="/assets/images/curriculum/certi.png" class="university-logo ls-is-cached lazyloaded">
											<span class="recommend-label recommend"><%=cvo.getCurri_uni_dert()%></span>


										<!-- <span class="bookmark"><i class="fa-solid fa-heart"></i></span> -->
										<a href="/app/curriculum/curriculum_detail.do?curri_num=<%=cvo.getCurri_num()%>" style="padding-bottom: 6px">
											<div class="info-category">
												<p class="univer_name td-text-style"><strong><%=cvo.getCurri_university()%></strong></p>
												<%-- <p class="user_name td-text-style"><%=cvo.getMember_num()%></p> --%>
											</div>
											<div class="curriculum-segment">
												<p class="curriculum-name">
													<span class="curriculum-brief-info"><%=cvo.getCurri_division()%>/<%=cvo.getCurri_credits()%>학점/<%=cvo.getCurri_grade()%>학년</span><br><%=cvo.getCurri_title()%>
												</p>
												<div class="curriculum-rank">
													<!-- <span class="rank-mark checked"></span> <span
														class="rank-mark checked"></span> <span
														class="rank-mark checked"></span> <span
														class="rank-mark checked"></span> <span class="rank-mark"></span>
													<span class="rank-mark-number recommend-rank-mark-number">4.0</span> -->
													<strong style="color: orange;">종합 만족도 : <%=(cvo.getCurri_satisfaction_rating()+cvo.getCurri_exam_rating()+
															cvo.getCurri_assignment_rating()+cvo.getCurri_professor_rating())/4.0%>점</strong>
												</div>
											</div>
										</a>
									</div>
									
									<div></div>
								</div>
							</li>
							<%
							}
							}
							%>
							<!-- curriculum content end -->
						</ul>
					</div>
				</div>
			</section>
		</main>
		<!-- main end -->
	</div>
		<jsp:include
		page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/modal.js"></script>
<script src="https://kit.fontawesome.com/d25c7e6490.js"
	crossorigin="anonymous"></script>
</html>