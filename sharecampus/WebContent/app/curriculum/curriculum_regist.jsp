<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커리큘럼 등록</title>
</head>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<link rel="stylesheet" href="../main/main.css">
<link rel="stylesheet" href="curriculum_regist.css">
<body>
    <main>
		<form class="container" action="writeOk.do" method="post">
			<div class="section">
				<h1>커리큘럼 등록</h1>
				<p class="description">
					본인이 이수한 <strong>강의의 정보와 후기</strong>를 공유해주세요.
				</p>
			</div>
			<div class="section">
				<h2>교과목 정보</h2>
				<p class="caution">* 별표 표시는 필수 항목입니다.</p>
				<div class="input_text_area">
					<h3>커리큘럼명 *</h3>
					<!-- 제목 -->
					<input type="text" name="title" placeholder="커리큘럼명" maxlength="100"
						autocomplete="off">
				</div>
				<div class="input_text_area">
					<h3>학과명 *</h3>
					<input type="text" name="major" placeholder="학과명" maxlength="100"
						autocomplete="off">
				</div>
				<div>
					<h3>학과 분야 *</h3>
					<div class="group">
						<fieldset>
							<label class="checkbox"><input type="radio"
								name="curri_field" value="경영·경제">경영·경제</label> <label
								class="checkbox"><input type="radio" name="curri_field"
								value="컴퓨터·전기·전자">컴퓨터·전기·전자</label> <label class="checkbox"><input
								type="radio" name="curri_field" value="기계">기계</label> <label
								class="checkbox"><input type="radio" name="curri_field"
								value="건축·토목">건축·토목</label> <label class="checkbox"><input
								type="radio" name="curri_field" value="재료·산업·안전">재료·산업·안전</label>
							<label class="checkbox"><input type="radio"
								name="curri_field" value="농림·수산·축산">농림·수산·축산</label> <label
								class="checkbox"><input type="radio" name="curri_field"
								value="사회과학">사회과학</label> <label class="checkbox"><input
								type="radio" name="curri_field" value="간호">간호</label> <label
								class="checkbox"><input type="radio" name="curri_field"
								value="화공·에너지">화공·에너지</label> <label class="checkbox"><input
								type="radio" name="curri_field" value="화학·생명·환경">화학·생명·환경</label>
							<label class="checkbox"><input type="radio"
								name="curri_field" value="수학·물리·천문">수학·물리·천문</label> <label
								class="checkbox"><input type="radio" name="curri_field"
								value="교육">교육</label> <label class="checkbox"><input
								type="radio" name="curri_field" value="언어·문학">언어·문학</label> <label
								class="checkbox"><input type="radio" name="curri_field"
								value="인문학">인문학</label> <label class="checkbox"><input
								type="radio" name="curri_field" value="미술·응용예술">미술·응용예술</label>
							<label class="checkbox"><input type="radio"
								name="curri_field" value="생활과학">생활과학</label> <label
								class="checkbox"><input type="radio" name="curri_field"
								value="음악·연극·영화">음악·연극·영화</label> <label class="checkbox"><input
								type="radio" name="curri_field" value="체육·무용">체육·무용</label>
						</fieldset>
					</div>
				</div>
				<div class="input_text_area">
					<h3>교과목 구분 *</h3>
					<input type="text" name="subject" placeholder="교과목 구분"
						maxlength="100" autocomplete="off">
				</div>
				<div>
					<h3>이수학점 *</h3>
					<div class="group">
						<fieldset>
							<label class="checkbox"><input type="radio"
								name="credits" value="1">1학점</label> <label class="checkbox"><input
								type="radio" name="credits" value="2">2학점</label> <label
								class="checkbox"><input type="radio" name="credits"
								value="3">3학점</label>
						</fieldset>
					</div>
				</div>
				<div>
					<h3>이수학년 *</h3>
					<div class="group">
						<fieldset>
							<label class="checkbox"><input type="radio" name="grade"
								value="1">1학년</label> <label class="checkbox"><input
								type="radio" name="grade" value="2">2학년</label> <label
								class="checkbox"><input type="radio" name="grade"
								value="3">3학년</label> <label class="checkbox"><input
								type="radio" name="grade" value="4">전학년</label>
						</fieldset>
					</div>
				</div>
				<div class="input_text_area">
					<h3>교수명 *</h3>
					<input type="text" name="professorName" placeholder="교수명"
						maxlength="100" autocomplete="off">
				</div>
			</div>
			<div class="section">
				<h2>수업 만족도 및 난이도</h2>
				<div>
					<h3>수업만족도</h3>
					<div class="class_rank_group rank_group">
						<fieldset>
							<input type="radio" name="classStar" value="5" id="classrate1"><label
								for="classrate1">★</label> <input type="radio" name="classStar"
								value="4" id="classrate2"><label for="classrate2">★</label>
							<input type="radio" name="classStar" value="3" id="classrate3"><label
								for="classrate3">★</label> <input type="radio" name="classStar"
								value="2" id="classrate4"><label for="classrate4">★</label>
							<input type="radio" name="classStar" value="1" id="classrate5"><label
								for="classrate5">★</label>
						</fieldset>
					</div>
				</div>
				<div>
					<h3>시험난이도</h3>
					<div class="exam_rank_group rank_group">
						<fieldset>
							<input type="radio" name="examStar" value="5" id="examrate1"><label
								for="examrate1">★</label> <input type="radio" name="examStar"
								value="4" id="examrate2"><label for="examrate2">★</label>
							<input type="radio" name="examStar" value="3" id="examrate3"><label
								for="examrate3">★</label> <input type="radio" name="examStar"
								value="2" id="examrate4"><label for="examrate4">★</label>
							<input type="radio" name="examStar" value="1" id="examrate5"><label
								for="examrate5">★</label>
						</fieldset>
					</div>
				</div>
				<div>
					<h3>과제난이도</h3>
					<div class="work_rank_group rank_group">
						<fieldset>
							<input type="radio" name="workStar" value="5" id="workrate1"><label
								for="workrate1">★</label> <input type="radio" name="workStar"
								value="4" id="workrate2"><label for="workrate2">★</label>
							<input type="radio" name="workStar" value="3" id="workrate3"><label
								for="workrate3">★</label> <input type="radio" name="workStar"
								value="2" id="workrate4"><label for="workrate4">★</label>
							<input type="radio" name="workStar" value="1" id="workrate5"><label
								for="workrate5">★</label>
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
				<div id="summernote" name="editordata"></div>
			</div>
			<!--  </form> -->
			<div class="submit_btn">
				<button type="submit">커리큘럼 등록하기</button>
			</div>
		</form>
	</main>
</body>
<script>
/* $(document).ready(function() {
        $('#summernote').summernote({
            height: 300,                 // 에디터 높이
            placeholder :  '여기에 글을 작성하세요',
	        lang: "ko-KR",
            maxWidth: 1200,
            disableResizeEditor: true
        });
}); */
</script>
</html>