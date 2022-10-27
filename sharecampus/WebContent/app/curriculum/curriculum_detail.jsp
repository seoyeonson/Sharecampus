<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커리큘럼 디테일</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="${pageContext.request.contextPath}/assets/css/curriculum_detail.css" rel="stylesheet">
</head>
<body>
	<div>
		<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp" />
		<!-- main start -->
		<main>
			<section class="curriculumDetailSection">
				<div class="curriculum_top">
					<div>
						<div class="curriculumDetailHeader">
							<p class="honor_student">
								<i class="fa-solid fa-medal"></i><span>명예학생 작성글</span>
							</p>
							<h2>컴퓨터의 개념 및 실습</h2>
						</div>
						<div>
							<ul class="class_detail_top">
								<li>교과목 구분 <span class="class_division">교양</span></li>
								<li>이수학점<span class="class_credit">3</span></li>
								<li>이수학년<span class="class_grade">1</span></li>
								<li>교수명<span class="class_prof">홍길동</span></li>
							</ul>
						</div>
						<div class="All_ratings">
							<ul>
								<li><h3>수업만족도</h3>
									<p class="class_rating color-grade-1">좋아요</p></li>
								<li><h3>시험난이도</h3>
									<p class="exam_rating color-grade-2">적당해요</p></li>
								<li><h3>과제난이도</h3>
									<p class="assign_rating color-grade-3">어려워요</p></li>
								<li><h3>교수만족도</h3>
									<p class="professor_rating color-grade-1">좋아요</p></li>
							</ul>
						</div>
						<div class="class_mini_menu">
							<ul>
								<li><a><i class="fa-solid fa-share"></i>공유하기</a></li>
								<li><a><i class="fa-solid fa-siren-on"></i>신고하기</a></li>
							</ul>
						</div>
					</div>
					<div class="class_detail_contents">
						<div class="class_detail_contents_wrap"></div>
					</div>
				</div>
				<hr>
				<div>
					<div>
						<h2>상세정보</h2>
					</div>
				</div>
			</section>
		</main>
		<!-- main end -->
		<jsp:include page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
		<jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="https://kit.fontawesome.com/d25c7e6490.js" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/assets/js/modal.js"></script>
</html>