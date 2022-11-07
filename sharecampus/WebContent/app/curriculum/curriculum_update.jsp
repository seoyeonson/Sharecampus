<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.sharecampus.curriculum.vo.*"%>
<%@ page import="java.util.*"%>
<%
List<CurriculumVO> list = (List<CurriculumVO>) request.getAttribute("list");

if (list == null || list.size() == 0) {
%>
<!-- <script>
	alert("해당 정보가 삭제되었거나 존재하지 않습니다.");
	history.back();
</script> -->
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
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>글 수정</title>
</head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/curriculum/curriculum_regist.css">
<body>
<jsp:include
		page="${pageContext.request.contextPath}/app/fix/header.jsp" />
	<main>
		<form class="container">
	<form name="frm" action="/app/curriculum/updateOk.do" method="post" onsubmit="return chkSubmit()">
		<div class="section">
				<h1>커리큘럼 수정</h1> 
				<p class="description">
					<button onclick="histroy.back()">뒤로가기</button> |
	<button onclick="location.href='/app/curriculum/curriculum.do'">목록으로</button>
					<input type="hidden" name="curri_num" value="<%=curri_num%>"/>
				</p>
			</div>
			<div class="section">
				<h2>교과목 정보</h2>
				<p class="caution">* 별표 표시는 필수 항목입니다.</p>
				<div class="input_text_area">
					<h3>커리큘럼명 *</h3>
					<!-- 제목 -->
					<input type="text" name="title" placeholder="커리큘럼명" maxlength="100"
						autocomplete="off" value="<%=curri_title%>">
				</div>
				<div class="input_text_area">
					<h3>학과명 *</h3>
					<input type="text" name="major" placeholder="학과명" maxlength="100"
						autocomplete="off" value="<%=curri_uni_dert%>">
				</div>
				<div>
					<h3>학과 분야 *</h3>
					<div class="group">
						<fieldset>
							<label class="checkbox">
							<input type="radio" name="curri_field" value="경영·경제">경영·경제
							</label> 
							<label class="checkbox"><input type="radio" name="curri_field"
							value="컴퓨터·전기·전자">컴퓨터·전기·전자
							</label> 
							<label class="checkbox">
							<input type="radio" name="curri_field" value="기계">기계
							</label> 
							<label class="checkbox">
							<input type="radio" name="curri_field" value="건축·토목">건축·토목
							</label> 
							<label class="checkbox">
							<input type="radio" name="curri_field" value="재료·산업·안전">재료·산업·안전
							</label>
							<label class="checkbox">
							<input type="radio" name="curri_field" value="농림·수산·축산">농림·수산·축산
							</label> 
							<label class="checkbox"><input type="radio" name="curri_field"
								value="사회과학">사회과학
								</label> 
								<label class="checkbox">
								<input type="radio" name="curri_field" value="간호">간호
								</label> 
								<label class="checkbox">
								<input type="radio" name="curri_field" value="화공·에너지">화공·에너지
								</label> 
								<label class="checkbox">
								<input type="radio" name="curri_field" value="화학·생명·환경">화학·생명·환경
								</label>
								<label class="checkbox">
								<input type="radio" name="curri_field" value="수학·물리·천문">수학·물리·천문
								</label> 
								<label class="checkbox">
								<input type="radio" name="curri_field" value="교육">교육
								</label> 
								<label class="checkbox">
								<input type="radio" name="curri_field" value="언어·문학">언어·문학
								</label> 
								<label class="checkbox">
								<input type="radio" name="curri_field" value="인문학">인문학</label> 
								<label class="checkbox">
								<input type="radio" name="curri_field" value="미술·응용예술">미술·응용예술
								</label>
								<label class="checkbox">
								<input type="radio" name="curri_field" value="생활과학">생활과학
								</label> 
								<label class="checkbox">
								<input type="radio" name="curri_field" value="음악·연극·영화">음악·연극·영화
								</label> 
								<label class="checkbox"><input type="radio" name="curri_field" value="체육·무용">체육·무용
								</label>
						</fieldset>
					</div>
				</div>
				<div class="input_text_area">
					<h3>교과목 구분 *</h3>
					<input type="text" name="subject" placeholder="교과목 구분"
						maxlength="100" autocomplete="off" value="<%=curri_division%>">
				</div>
				<div>
					<h3>이수학점 *</h3>
					<div class="group">
						<fieldset>
							<label class="checkbox">
							<input type="radio" name="credits" value="1">1학점
							</label> 
							<label class="checkbox">
							<input type="radio" name="credits" value="2">2학점
							</label> 
							<label class="checkbox">
							<input type="radio" name="credits" value="3">3학점
							</label>
						</fieldset>
					</div>
				</div>
				<div>
					<h3>이수학년 *</h3>
					<div class="group">
						<fieldset>
							<label class="checkbox">
							<input type="radio" name="grade" value="1">1학년
							</label> 
							<label class="checkbox">
							<input type="radio" name="grade" value="2">2학년
							</label> 
							<label class="checkbox">
							<input type="radio" name="grade" value="3">3학년
							</label> 
							<label class="checkbox">
							<input type="radio" name="grade" value="4">전학년
							</label>
						</fieldset>
					</div>
				</div>
				<div class="input_text_area">
					<h3>교수명 *</h3>
					<input type="text" name="professorName" placeholder="교수명"
						maxlength="100" autocomplete="off" value="<%=curri_professor%>">
				</div>
			</div>
			<div class="section">
				<h2>수업 만족도 및 난이도</h2>
				<div>
					<h3>수업만족도</h3>
					<div class="class_rank_group rank_group">
						<fieldset>
							<input type="radio" name="classStar" value="5" id="classrate1">
							<label for="classrate1">★</label> 
							<input type="radio" name="classStar" value="4" id="classrate2">
							<label for="classrate2">★</label>
							<input type="radio" name="classStar" value="3" id="classrate3">
							<label for="classrate3">★</label> 
							<input type="radio" name="classStar" value="2" id="classrate4">
							<label for="classrate4">★</label>
							<input type="radio" name="classStar" value="1" id="classrate5">
							<label for="classrate5">★</label>
						</fieldset>
					</div>
				</div>
				<div>
					<h3>시험난이도</h3>
					<div class="exam_rank_group rank_group">
						<fieldset>
							<input type="radio" name="examStar" value="5" id="examrate1">
							<label for="examrate1">★</label> 
							<input type="radio" name="examStar" value="4" id="examrate2">
							<label for="examrate2">★</label>
							<input type="radio" name="examStar" value="3" id="examrate3">
							<label for="examrate3">★</label> 
							<input type="radio" name="examStar" value="2" id="examrate4">
							<label for="examrate4">★</label>
							<input type="radio" name="examStar" value="1" id="examrate5">
							<label for="examrate5">★</label>
						</fieldset>
					</div>
				</div>
				<div>
					<h3>과제난이도</h3>
					<div class="work_rank_group rank_group">
						<fieldset>
							<input type="radio" name="workStar" value="5" id="workrate1">
							<label for="workrate1">★</label> 
							<input type="radio" name="workStar" value="4" id="workrate2">
							<label for="workrate2">★</label>
							<input type="radio" name="workStar" value="3" id="workrate3">
							<label for="workrate3">★</label> 
							<input type="radio" name="workStar" value="2" id="workrate4">
							<label for="workrate4">★</label>
							<input type="radio" name="workStar" value="1" id="workrate5">
							<label for="workrate5">★</label>
						</fieldset>
					</div>
				</div>
				<div>
					<h3>교수만족도</h3>
					<div class="professor_rank_group rank_group">
						<fieldset>
							<input type="radio" name="professorStar" value="5"
								id="professorrate1"><label for="professorrate1">★</label>
							<input type="radio" name="professorStar" value="4"
								id="professorrate2"><label for="professorrate2">★</label>
							<input type="radio" name="professorStar" value="3"
								id="professorrate3"><label for="professorrate3">★</label>
							<input type="radio" name="professorStar" value="2"
								id="professorrate4"><label for="professorrate4">★</label>
							<input type="radio" name="professorStar" value="1"
								id="professorrate5"><label for="professorrate5">★</label>
						</fieldset>
					
					</div>
				</div>
			</div>
			<!-- <form action=""> -->
			<div class="section">
				<h2>상세 내용</h2>
						<div>
						
				<!-- <div id="summernote" name="curri_contents" class="content"></div> -->
				 <textarea cols="77%" rows="25%" placeholder="여기에 글을 작성하세요"
                            style="font-weight: bold; font-size: 15px; resize: none;" 
                            name="editordata"><%=curri_contents%></textarea>
				</div>	
			</div>
		<br><br>
		<div class="submit_btn">
				<button type="submit">커리큘럼 수정완료</button>
			</div>
	</form>
	</form>
	</main>

	
	<script>
	function chkSubmit() {
		frm = document.forms['frm'];

		let title = frm['title'].value.trim();
		let major = frm['major'].value.trim();
		let subject = frm['subject'].value.trim();
		let professorName = frm['professorName'].value.trim();

		if (title == '') {
			alert("제목은 반드시 입력해야 합니다");
			frm['title'].focus();
			return false;
		}

		return true;
	}
	</script>
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
</body>
</html>