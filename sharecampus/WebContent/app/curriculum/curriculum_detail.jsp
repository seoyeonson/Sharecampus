<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.sharecampus.curriculum.vo.CurriculumVO"%>
<%@ page import="com.sharecampus.curriculum.dao.CurriculumDAO"%>

<%
List<CurriculumVO> list = (List<CurriculumVO>) request.getAttribute("list");

if (list == null || list.size() == 0) {
%>
<script>
	alert("해당 정보가 삭제되었거나 존재하지 않습니다.");
	history.back();
</script>
<%
return;
}
%>
<%
CurriculumVO cvo = list.get(0);
int curri_num = cvo.getCurri_num();
int member_num = cvo.getMember_num();
String curri_title = cvo.getCurri_title();
String curri_university = cvo.getCurri_university();
String curri_uni_dert = cvo.getCurri_uni_dert();
String curri_field = cvo.getCurri_field();
String curri_division = cvo.getCurri_division();
int curri_credits = cvo.getCurri_credits();
String curri_grade = cvo.getCurri_grade();
String curri_professor = cvo.getCurri_professor();
int curri_satisfaction_rating = cvo.getCurri_satisfaction_rating();
int curri_exam_rating = cvo.getCurri_exam_rating();
int curri_assignment_rating = cvo.getCurri_assignment_rating();
int professorrating = cvo.getCurri_professor_rating();
Date curri_regist_date = cvo.getCurri_regist_date();
String curri_contents = cvo.getCurri_contents();
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>글 상세 페이지</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/curriculum/curriculum_detail.css">
<script
	src="${pageContext.request.contextPath}/assets/js/curriculum/curriculum_detail.js"></script>
</head>
<body>
	<div>
		<jsp:include
			page="${pageContext.request.contextPath}/app/fix/header.jsp" />
		<!-- main start -->
		<main>	
			<section class="curriculumDetailSection">
				<div class="curriculum_top">
					<div>
						<div class="curriculumDetailHeader">
							<h2><%=curri_title%></h2>
						</div>
						<div>
							<ul class="class_detail_top">
								<li>교과목 구분 <span class="class_division"><%=curri_division%></span></li>
								<li>이수학점<span class="class_credit"><%=curri_credits%></span></li>
								<li>이수학년<span class="class_grade"><%=curri_grade%></span></li>
								<li>교수명<span class="class_prof"><%=curri_professor%></span></li>
							</ul>
						</div>
						<div class="All_ratings">
							<ul>
								<li>
									<h3>수업만족도</h3> <span class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span class="rank-mark"></span>
								</li>
								<li>
									<h3>시험난이도</h3> <span class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span class="rank-mark"></span>
								</li>
								<li>
									<h3>과제난이도</h3> <span class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span class="rank-mark"></span>
								</li>
								<li>
									<h3>교수만족도</h3> <span class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span class="rank-mark"></span>
								</li>
							</ul>
						</div>
						<div class="btns">
	<button type="button" onclick="chkDelete(<%=curri_num%>)">삭제하기</button> |
	<button type="button" onclick="location.href='/app/curriculum/curriculum.do'">목록으로</button> |
	<button type="button" onclick="location.href='/app/curriculum/curriculum_update.do?curri_num=<%=curri_num%>'">수정하기</button> |
	<button type="button" onclick="location.href='/app/curriculum/curriculum_regist.do'">신규등록</button>
		</div>
					</div>
				</div>
				<!-- <hr> -->
				<div>
					<div class="curri_main_contents"><%=curri_contents%></div>
				</div>
				<!-- <div class="crri_info">
                    <img src="https://d1qzykz9iz00c7.cloudfront.net/static/logo/logo_c290.jpg" class="university-logo ls-is-cached lazyloaded">
                    <div class="info-category">
                        <p class="univer_name td-text-style">대구보건대학교</p>
                        <p class="user_name td-text-style">홍길동</p>
                    </div>
                </div> -->
				<!-- <div class="curri_reply_area">
					<div></div>
					<form>
						<textarea class="textarea" cols="30" rows="1" maxwidth="600"
							placeholder="댓글을 등록하세요."></textarea>
						<button class="curri_reply_apply">등록</button>
					</form>
				</div> -->
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
<script>
	function chkDelete(curri_num) {
		let r = confirm("삭제하시겠습니까?");
		if (r) {
			location.href = "/app/curriculum/deleteOk.do?curri_num=" + curri_num;
		}
	}
</script>
</html>