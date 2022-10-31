<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대외활동 등록</title>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/activity/activity.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/activity/activity_new.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/activity/activity_new.js"></script>
<body>
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/header.jsp" />
	<div id="maindiv">



		<form id="container">
			<div class="section">
				<h1>대외활동 게시 요청</h1>
				<p class="description">
					대외활동 게시는 <strong>무료로 진행</strong>되며,<br>담당자의 검토 및 승인 절차를 걸쳐
					48시간 이내 게시됩니다.
				</p>
			</div>
			<div class="section">
				<h2>담당자 정보</h2>
				<div class="manager" data-managerfor="first">
					<p class="input medium">
						<input type="email" name="manager_email" placeholder="이메일"
							maxlength="100" autocomplete="off">
					</p>
					<p class="input medium">
						<input type="text" name="manager_name" placeholder="이름"
							maxlength="10" autocomplete="off">
					</p>
					<p class="input medium">
						<input type="number" name="manager_phone"
							placeholder="연락처 (- 없이 숫자만)" autocomplete="off">
					</p>
					<p class="input medium">
						<input type="text" name="manager_company" placeholder="소속"
							maxlength="40" autocomplete="off">
					</p>
					<p class="agreement">게시물 관리, 게시 처리 안내, 유료 광고 게재 안내 등을 위해 담당자
						이메일, 이름, 연락처, 소속을 수집합니다. 수집한 개인정보는 2년 이후 즉시 파기됩니다. (게시 요청 또는 게시물
						관리 계정 접속 기준)</p>
					<label class="agreement"><input type="checkbox"
						name="agree">위 내용에 동의합니다.</label>
				</div>
				<div class="manager" data-managerfor="again" style="display: none;">
					<p class="input medium">
						<input type="email" name="manager_again_email" placeholder="이메일"
							maxlength="100">
					</p>
					<p class="input medium">
						<input type="password" name="manager_again_password"
							placeholder="비밀번호">
					</p>
					<p class="button medium">
						<input type="button" name="manager_again_button"
							value="이메일 및 비밀번호 확인">
					</p>
				</div>
			</div>
			<div class="section">
				<h2>활동 개요</h2>
				<p class="caution">* 별표 표시는 필수 항목입니다.</p>
				<p class="input">
					<input type="text" name="title" placeholder="제목 *" maxlength="40"
						autocomplete="off">
				</p>
				<p class="input">
					<input type="text" name="website" placeholder="웹사이트 (http:// 포함)"
						autocomplete="off">
				</p>
				<h3>지역 *</h3>
				<div class="group area">
					<label class="checkbox"><input type="radio" name="area"
						value="KR01">서울특별시</label> <label class="checkbox"><input
						type="radio" name="area" value="KR02">경기도</label> <label
						class="checkbox"><input type="radio" name="area"
						value="KR03">부산광역시</label> <label class="checkbox"><input
						type="radio" name="area" value="KR04">인천광역시</label> <label
						class="checkbox"><input type="radio" name="area"
						value="KR05">대구광역시</label> <label class="checkbox"><input
						type="radio" name="area" value="KR06">경상남도</label> <label
						class="checkbox"><input type="radio" name="area"
						value="KR07">경상북도</label> <label class="checkbox"><input
						type="radio" name="area" value="KR08">대전광역시</label> <label
						class="checkbox"><input type="radio" name="area"
						value="KR09">충청남도</label> <label class="checkbox"><input
						type="radio" name="area" value="KR10">충청북도</label> <label
						class="checkbox"><input type="radio" name="area"
						value="KR11">전라남도</label> <label class="checkbox"><input
						type="radio" name="area" value="KR12">전라북도</label> <label
						class="checkbox"><input type="radio" name="area"
						value="KR13">광주광역시</label> <label class="checkbox"><input
						type="radio" name="area" value="KR14">강원도</label> <label
						class="checkbox"><input type="radio" name="area"
						value="KR15">울산광역시</label> <label class="checkbox"><input
						type="radio" name="area" value="KR16">제주특별자치도</label> <label
						class="checkbox"><input type="radio" name="area"
						value="KR17">세종특별자치시</label> <label class="checkbox"><input
						type="radio" name="area" value="KR00">기타</label>
				</div>
				<h3>분야 *</h3>
				<div class="group category">
					<label class="checkbox"><input type="radio" name="category"
						value="01">여행/호텔/관광</label> <label class="checkbox"><input
						type="radio" name="category" value="02">언론/미디어</label> <label
						class="checkbox"><input type="radio" name="category"
						value="03">문화/역사</label> <label class="checkbox"><input
						type="radio" name="category" value="04">행사/페스티벌</label> <label
						class="checkbox"><input type="radio" name="category"
						value="05">교육</label> <label class="checkbox"><input
						type="radio" name="category" value="06">디자인/사진/예술</label> <label
						class="checkbox"><input type="radio" name="category"
						value="07">경제/금융</label> <label class="checkbox"><input
						type="radio" name="category" value="08">경영/컨설팅/마케팅</label> <label
						class="checkbox"><input type="radio" name="category"
						value="09">정치/사회/법률</label> <label class="checkbox"><input
						type="radio" name="category" value="10">체육/헬스</label> <label
						class="checkbox"><input type="radio" name="category"
						value="11">의료/보건</label> <label class="checkbox"><input
						type="radio" name="category" value="12">뷰티/미용/화장품</label> <label
						class="checkbox"><input type="radio" name="category"
						value="13">과학/공학/기술/IT</label> <label class="checkbox"><input
						type="radio" name="category" value="14">요리/식품</label> <label
						class="checkbox"><input type="radio" name="category"
						value="15">창업/자기계발</label> <label class="checkbox"><input
						type="radio" name="category" value="16">환경/에너지</label> <label
						class="checkbox"><input type="radio" name="category"
						value="17">콘텐츠</label> <label class="checkbox"><input
						type="radio" name="category" value="18">사회공헌/교류</label> <label
						class="checkbox"><input type="radio" name="category"
						value="19">유통/물류</label> <label class="checkbox"><input
						type="radio" name="category" value="20">기타</label>
				</div>
				<h3>접수 기간 *</h3>
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
					<label class="checkbox"><input type="radio" name="period"
						value="0001">3개월 이하</label> <label class="checkbox"><input
						type="radio" name="period" value="0002">3개월~6개월</label> <label
						class="checkbox"><input type="radio" name="period"
						value="0003">6개월~1년</label> <label class="checkbox"><input
						type="radio" name="period" value="0004">1년 이상</label>
				</div>
				<h3>모집인원</h3>
				<p class="input medium">
					<input type="number" min="0" name="num_people" placeholder="인원수"
						maxlength="40" autocomplete="off">
				</p>
				<h3>기관 정보</h3>
				<p class="input medium">
					<input type="text" name="company" placeholder="주최 기관명"
						maxlength="40" autocomplete="off">
				</p>
			</div>
			<div class="section">
				<h2>상세 내용</h2>
				<p class="input">
					<textarea name="description"
						placeholder="※ 개요, 주제, 일정, 참가자격, 시상내역 및 혜택, 활동내용, 유의사항, 접수방법, 문의처 등 상세 내용을 자유롭게 적어주세요."></textarea>
				</p>
			</div>

			<div class="section">
				<h2>이미지</h2>
				<ul class="description">
					<li>본문 : 게시물 내에 노출 / 1080px 권장</li>
					<li>썸네일 : 목록에 노출 / 480x684px 권장 / 없을 시 '본문' 이미지로 대체</li>
				</ul>
				<p class="input medium">
					<input type="text" name="attach_filename" placeholder="본문 *"
						class="attachtext" readonly> <input type="file"
						id="my-input" name="attach" class="attachfile"
						accept="image/jpeg, image/png, image" onchange="fileUpload()">
					<input type="button" name="attach_button" value="파일 선택"
						class="attachbutton" onclick="onClickUpload();"
						onchange="fileUpload()">
				</p>
				<p class="input medium thumbnail">
					<input type="text" name="attach_filename" placeholder="썸네일"
						class="attachtext" readonly> <input type="file"
						id="my-input" name="attach" class="attachfile"
						accept="image/jpeg, image/png, image" onchange="fileUpload()">
					<input type="button" name="attach_button" value="파일 선택"
						class="attachbutton" onclick="onClickUpload();"
						onchange="fileUpload()">
				</p>
			</div>

			<div class="section">
				<h2>유의사항</h2>
				<ul class="description">
					<li>공모전 및 대외활동 정보만 게시할 수 있습니다. 동아리, 스터디, 구인 등의 정보는 다른 커뮤니티를
						이용해주세요.</li>
					<li>대외활동의 경우 봉사활동, 기자단, 서포터즈, 홍보대사, 마케터, 강연에 해당하는 대외활동만 게시할 수
						있습니다.</li>
					<li>다음과 같은 공모전·대외활동은 거절될 수 있습니다.</li>
					<ul>
						<li>서비스 홍보를 요구하는 공모전·대외활동 (회원가입, 설치, 작성, 공유 등)</li>
						<li>서비스 이용을 요구하는 공모전·대외활동 (콘텐츠 제작, 멘토링, 운영관리 등)</li>
						<li>병의원 관련사의 공모전·대외활동</li>
						<li>기관/정치인/정당/종교/시민단체와 직간접적으로 연관되거나, 관련한 온오프라인 활동을 하는
							공모전·대외활동</li>
						<li>금융/보험 관련사의 영업/실무와 연관된 공모전·대외활동</li>
						<li>교육위탁/국비지원/국가지원사업과 연관된 공모전·대외활동</li>
						<li>인력 모집을 위한 구인/구직 목적의 공모전·대외활동</li>
						<li>비용이 발생하는 공모전·대외활동 (참가비, 후원비 등)</li>
						<li>활동참여의 대가 및 혜택이 불분명한 공모전·대외활동</li>
						<li>총 상금이 100만원 이하이거나, 상금에 준하는 증권이 아닌 현물을 제공하는 공모전·대외활동</li>
						<li>특정 대학교만 참여할 수 있는 공모전·대외활동</li>
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
				<input type="submit" value="게시 요청하기">
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
</html>