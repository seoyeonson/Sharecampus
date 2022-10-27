<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link href="${pageContext.request.contextPath}/assets/css/search.css" rel="stylesheet">
</head>
<body>
	<div>
		<jsp:include
			page="${pageContext.request.contextPath}/app/fix/header.jsp" />
		<!-- main start -->
		<main class="searchResultSection">
			<section>
				<div class="searchInputWrap">
					<input type="text" class="searchInput"
						placeholder="검색내용을 입력해주세요(e.g 반려동물 관련 사이드프로젝트)" value=""
						maxlength="30">
					<div class="inputBtnWrap">
						<button class="inputSearchBtn">
							<img loading="lazy"
								src="https://letspl.me/assets/images/ic-search.png" alt="검색">
						</button>
					</div>
				</div>
				<div class="searchHistoryWrap">
					<div class="historyWrap">
						<p>최근 검색어</p>
						<span style="font-size: 14px; margin-left: 10px">최근 검색어가
							없습니다</span>
					</div>
					<div class="historyWrap">
						<p>인기 검색어</p>
						<ul>
							<li><a href="">IOS</a></li>
							<li><a href="">스터디</a></li>
							<li><a href="">플러터</a></li>
							<li><a href="">FLUTTER</a></li>
							<li><a href="">퍼블리셔</a></li>
						</ul>
					</div>
				</div>
			</section>
		</main>
		<!-- main end -->
		<jsp:include
			page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
		<jsp:include
			page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
	</div>
</body>
<script src="${pageContext.request.contextPath}/assets/js/modal.js"></script>
</html>