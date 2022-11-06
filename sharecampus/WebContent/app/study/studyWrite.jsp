<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스터디 모집 글쓰기</title>
<!-- 인원수 모집란에 증감 화살표 삭제 -->
<style>
input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
	-webkit-appearance: none;
	margin: 0;
}

input[type=number] {
	-moz-appearance: textfield;
}
</style>
<!-- 에러 무시 문제 없음 -->
</head>
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/study/studyMain.css"> --%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/study/studyWrite.css">
<body>
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/header.jsp" />
	<div id="maindiv">



		<form id="container"
			action="${pageContext.request.contextPath}/study/listDi.su"
			method="post" name="studyWriteForm">
			<div class="section">
				<h1>스터디 모집</h1>
				<!-- <p class="description">
					 <strong>무료로 진행</strong>되며,<br>담당자의 검토 및 승인 절차를 걸쳐
					48시간 이내 게시됩니다.
				</p> -->
				<!-- 원래 아무것도 안적혀있는데 허전하다고 느끼시면 상의해서 문구를 넣어봐요. -->
			</div>
			<div class="section">
				<h2>글쓴이 정보</h2>
				<div class="manager" data-managerfor="first">
					<!-- <p class="input medium">
						<input type="email" name="
							maxlength="10" autocomplete="off">
					</p> -->
					<p class="input medium">
						<input type="text" name="studyContact" placeholder="연락 수단 (오픈 카톡..)"
							autocomplete="off">
					</p>
					
					<!-- <p class="input medium">
						<input type="text" name="memberNum" placeholder="회원 번호"
							autocomplete="off">
					</p> -->
					<!-- <p class="agreement">게시물 관리, 게시 처리 안내, 유료 광고 게재 안내 등을 위해 글쓴이
						이메일, 이름, 연락처, 소속을 수집합니다. 수집한 개인정보는 2년 이후 즉시 파기됩니다. (게시 요청 또는 게시물
						관리 계정 접속 기준)</p>
					<label class="agreement"><input type="checkbox"
						name="agree">위 내용에 동의합니다.</label> -->
				</div>
			</div>
			<div class="section">
				<h2>활동 개요</h2>
				<p class="caution">* 별표 표시는 필수 항목입니다.</p>
				<p class="input">
					<input type="text" name="studyTitle" placeholder="제목 *" maxlength="40"
						autocomplete="off">
				</p>

				<h3>지역 *</h3>
				<div class="group area">
					<label class="checkbox"><input type="radio"
						name="studyArea" value="서울특별시">서울특별시</label> <label
						class="checkbox"><input type="radio" name="studyArea"
						value="경기도">경기도</label> <label class="checkbox"><input
						type="radio" name="studyArea" value="부산광역시">부산광역시</label> <label
						class="checkbox"><input type="radio" name="studyArea"
						value="인천광역시">인천광역시</label> <label class="checkbox"><input
						type="radio" name="studyArea" value="대구광역시">대구광역시</label> <label
						class="checkbox"><input type="radio" name="studyArea"
						value="경상남도">경상남도</label> <label class="checkbox"><input
						type="radio" name="studyArea" value="경상북도">경상북도</label> <label
						class="checkbox"><input type="radio" name="studyArea"
						value="대전광역시">대전광역시</label> <label class="checkbox"><input
						type="radio" name="studyArea" value="충청남도">충청남도</label> <label
						class="checkbox"><input type="radio" name="studyArea"
						value="충청북도">충청북도</label> <label class="checkbox"><input
						type="radio" name="studyArea" value="전라남도">전라남도</label> <label
						class="checkbox"><input type="radio" name="studyArea"
						value="전라북도">전라북도</label> <label class="checkbox"><input
						type="radio" name="studyArea" value="광주광역시">광주광역시</label> <label
						class="checkbox"><input type="radio" name="studyArea"
						value="강원도">강원도</label> <label class="checkbox"><input
						type="radio" name="studyArea" value="울산광역시">울산광역시</label> <label
						class="checkbox"><input type="radio" name="studyArea"
						value="제주특별자치도">제주특별자치도</label> <label class="checkbox"><input
						type="radio" name="studyArea" value="세종특별자치시">세종특별자치시</label> <label
						class="checkbox"><input type="radio" name="studyArea"
						value="기타">기타</label>
				</div>

				<h3>분야 *</h3>
				<div class="group category">
					<label class="checkbox"><input type="radio" name="studyDepart"
						value="여행/호텔/관광">여행/호텔/관광</label> <label class="checkbox"><input
						type="radio" name="studyDepart" value="언론/미디어">언론/미디어</label> <label
						class="checkbox"><input type="radio" name="studyDepart"
						value="문화/역사">문화/역사</label> <label class="checkbox"><input
						type="radio" name="studyDepart" value="행사/페스티벌">행사/페스티벌</label> <label
						class="checkbox"><input type="radio" name="studyDepart"
						value="교육">교육</label> <label class="checkbox"><input
						type="radio" name="studyDepart" value="디자인/사진/예술">디자인/사진/예술</label> <label
						class="checkbox"><input type="radio" name="studyDepart"
						value="경제/금융">경제/금융</label> <label class="checkbox"><input
						type="radio" name="studyDepart" value="경영/컨설팅/마케팅">경영/컨설팅/마케팅</label> <label
						class="checkbox"><input type="radio" name="studyDepart"
						value="정치/사회/법률">정치/사회/법률</label> <label class="checkbox"><input
						type="radio" name="studyDepart" value="체육/헬스">체육/헬스</label> <label
						class="checkbox"><input type="radio" name="studyDepart"
						value="의료/보건">의료/보건</label> <label class="checkbox"><input
						type="radio" name="studyDepart" value="뷰티/미용/화장품">뷰티/미용/화장품</label> <label
						class="checkbox"><input type="radio" name="studyDepart"
						value="과학/공학/기술/IT">과학/공학/기술/IT</label> <label class="checkbox"><input
						type="radio" name="studyDepart" value="요리/식품">요리/식품</label> <label
						class="checkbox"><input type="radio" name="studyDepart"
						value="창업/자기계발">창업/자기계발</label> <label class="checkbox"><input
						type="radio" name="studyDepart" value="환경/에너지">환경/에너지</label> <label
						class="checkbox"><input type="radio" name="studyDepart"
						value="콘텐츠">콘텐츠</label> <label class="checkbox"><input
						type="radio" name="studyDepart" value="사회공헌/교류">사회공헌/교류</label> <label
						class="checkbox"><input type="radio" name="studyDepart"
						value="유통/물류">유통/물류</label> <label class="checkbox"><input
						type="radio" name="studyDepart" value="기타">기타</label>
				</div>
				<!-- <h3>접수 기간 *</h3>
				<p class="input small">
					<input type="date" name="start_date" autocomplete="off"
						class="date" id="datepicker1"><span>부터</span>
				</p>
				<p class="input small">
					<input type="date" name="end_date" autocomplete="off" class="date"
						id="datepicker2"><span>까지</span>
				</p>
				<h3>활동기간 *</h3>
				<div class="group">
					<label class="checkbox">
					<input type="radio" name="period"
						value="0001">3개월 이하</label> 
						<label class="checkbox">
						<input type="radio" name="period" 
						value="0002">3개월~6개월</label> 
						<label class="checkbox">
						<input type="radio" name="period"
						value="0003">6개월~1년</label> 
						<label class="checkbox">
						<input type="radio" name="period" value="0004">1년 이상</label>
				</div> -->
				<h3>모집인원</h3>
				<p class="input medium">
					<input type="number" min="0" name="studyPeople" placeholder="인원수"
						maxlength="40" autocomplete="off">
				</p>
			</div>
			<div class="section">
				<h2>상세 내용</h2>
				<p class="input">
					<textarea name="studyIntro"
						placeholder="※ 개요, 주제, 일정, 참가자격, 시상내역 및 혜택, 활동내용, 유의사항, 접수방법, 문의처 등 상세 내용을 자유롭게 적어주세요."></textarea>
				</p>
			</div>

			<div class="section">
				<h2>유의사항</h2>
				<ul class="description">
					<li>스터디 모집 정보만 게시할 수 있습니다. 동아리, 대외활동, 구인 등의 정보는 다른 커뮤니티를
						이용해주세요.</li>
					<li>스터디 모집의 경우 봉사활동, 기자단, 서포터즈, 홍보대사, 마케터에 해당하는 스터디 모집만 게시할 수
						있습니다.</li>
					<li>다음과 같은 스터디 모집은 거절될 수 있습니다.</li>
					<ul>
						<li>서비스 홍보를 요구하는 스터디 모집 (회원가입, 설치, 작성, 공유 등)</li>
						<li>서비스 이용을 요구하는 스터디 모집 (콘텐츠 제작, 멘토링, 운영관리 등)</li>
						<li>병의원 관련사의 스터디 모집</li>
						<li>기관/정치인/정당/종교/시민단체와 직간접적으로 연관되거나, 관련한 온오프라인 활동을 하는 스터디 모집</li>
						<li>금융/보험 관련사의 영업/실무와 연관된 스터디 모집</li>
						<li>교육위탁/국비지원/국가지원사업과 연관된 스터디 모집</li>
						<li>인력 모집을 위한 구인/구직 목적의 스터디 모집</li>
						<li>비용이 발생하는 스터디 모집 (참가비, 후원비 등)</li>
						<li>활동참여의 대가 및 혜택이 불분명한 스터디 모집</li>
						<li>총 상금이 100만원 이하이거나, 상금에 준하는 증권이 아닌 현물을 제공하는 스터디 모집</li>
						<li>특정 대학교만 참여할 수 있는 스터디 모집</li>
					</ul>
					<li>다음과 같은 게시요청은 게시되지 않습니다.</li>
					<ul>
						<li>동일한 정보가 이미 게시되어 있을 경우</li>
						<li>운영 주체, 모집 기간, 활동 내용 등 상세 정보가 명확하지 않거나 불분명한 경우</li>
						<li>그 외 <a href="/page/rules">커뮤니티 이용규칙</a>에 어긋나거나, 커뮤니티 성격에
							부적합하다고 판단되는 경우
						</li>
					</ul>
				</ul>
			</div>
			<div class="submit">
				<input type="button" value="게시 요청하기" onclick="send()">
			</div>
		</form>
	</div>
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/modal.js"></script>
<script>
	function send() {
		studyWriteForm.submit();
	}
</script>
</html>