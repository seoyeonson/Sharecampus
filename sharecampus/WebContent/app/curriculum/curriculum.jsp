<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="curriculum.VO.*"%>

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
<link href="../main/main.css" rel="stylesheet">
<link href="../main/modal.css" rel="stylesheet">
<link href="../curriculum/curriculum.css" rel="stylesheet">
</head>
<body>
	<div>
		<!-- header start -->
		<header class="Header">
			<nav>
				<div class="logo">
					<a href="../main/index.html">로고</a>
				</div>
				<ul class="Navbar">
					<li><a href="#">커리큘럼</a></li>
					<li><a href="../Study/studyMain.html">스터디</a></li>
					<li><a href="../activity/activity.html">대외활동</a></li>
					<li><a href="../community/community.html">커뮤니티</a></li>
				</ul>
				<div class="loginWrap">
					<div class="searchWrap">
						<a class="searchIc" href="../main/search.html"> <span>검색</span>
							<img src="https://letspl.me/assets/images/ic-search-white.png">
						</a>
					</div>
					<div class="joinAndLoginWrap">
						<a class="joinAndLogin">가입</a> <a class="joinAndLogin">로그인</a>
					</div>
				</div>
			</nav>
		</header>
		<!-- header end -->
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
						<a class="curriculum-regist" href="curriculum_regist.jsp"> <span>커리큘럼
								작성</span>
						</a>
					</div>
					<!-- 과 카테고리 선택 -->
					<div class="departments">
						<a href="" class="department checked">경영·경제</a> <a href=""
							class="department">컴퓨터·전기·전자</a> <a href="" class="department">기계</a>
						<a href="" class="department">건축·토목</a> <a href=""
							class="department">재료·산업·안전</a> <a href="" class="department">농림·수산·축산</a>
						<a href="" class="department">사회과학</a> <a href=""
							class="department">간호</a> <a href="" class="department">화공·에너지</a>
						<a href="" class="department">화학·생명·환경</a> <a href=""
							class="department">수학·물리·천문</a> <a href="" class="department">교육</a>
						<a href="" class="department">언어·문학</a> <a href=""
							class="department">인문학</a> <a href="" class="department">미술·응용예술</a>
						<a href="" class="department">생활과학</a> <a href=""
							class="department">음악·연극·영화</a> <a href="" class="department">체육·무용</a>
					</div>
					<!-- 커리큘럼 목록 -->
					<div class="result-view">
						<ul id="curriculum_ul"
							class="curriculum-list curriculum_min_height flex">
							<!-- curriculum content start -->

							<%
							if (list != null) {
								for (CurriculumVO dto : list) {
							%>
							<li>
								<div class="curriculum-list_box">
									<div class="curri_img"></div>
									<div class="top-curriculum-info">
										<img
											src="https://d1qzykz9iz00c7.cloudfront.net/static/logo/logo_c290.jpg"
											class="university-logo ls-is-cached lazyloaded"> <span
											class="recommend-label recommend"><%=dto.getCurri_field()%></span>
											

										<span class="bookmark"><i class="fa-solid fa-heart"></i></span>
										<a href="curriculum_detail.jsp" style="padding-bottom: 6px">
											<div class="info-category">
												<p class="univer_name td-text-style"><%=dto.getCurri_university()%></p>
												<p class="user_name td-text-style"><%=dto.getMember_num()%></p>
											</div>
											<div class="curriculum-segment">
												<p class="curriculum-name">
													<span class="curriculum-brief-info">교양/3학점/1학년</span><br>컴퓨터의
													개념 및 실습
												</p>
												<div class="curriculum-rank">
													<span class="rank-mark checked"></span> <span
														class="rank-mark checked"></span> <span
														class="rank-mark checked"></span> <span
														class="rank-mark checked"></span> <span class="rank-mark"></span>
													<span class="rank-mark-number recommend-rank-mark-number">4.0</span>
												</div>
											</div>
										</a>
									</div>
									<!-- <div class="area-line"></div>
									<div class="uni-info_text_wrap">
										<div class="curriculum-review">
											<h4 class="good">장점</h4>
											<p class="td-text-style">의료기사 중에서 유일하게 창업이 가능한 점이 좋음 실력을
												쌓아서 자기가 기공소를 차려도 되고 해외취업이나 치과로 취업해도되고 학력을 더 쌓...</p>
										</div>
										<div class="curriculum-review">
											<h4 class="bad">단점</h4>
											<p class="td-text-style">너무 계단이 에바임 여름에 쪄죽음. 등록금이 비쌈.
												사람들이 우리과에 대해 좋게 생각하는 사람들이 드뭄</p>
										</div>
									</div>
									<div class="sub-info td-text-style">
										<span><i class="far fa-eye"></i><span>46</span></span> <span><i
											class="far fa-heart"></i><span>0</span></span> <span><i
											class="far fa-comment-dots"></i><span>0</span></span>
									</div> -->
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
		<!-- footer start -->
		<footer class="Footer">
			<div class="footerContent">
				<div class="top">
					<div class="left">
						<div class="logoWrap">
							<a>로고</a>
						</div>
						<ul>
							<li><span>1:1 문의</span> <a href="" target="_blank">운영자
									1:1 카카오챗</a></li>
							<li><span>오픈 챗</span> <a href="" target="_blank">&nbsp;&nbsp;코드
									2580</a></li>
							<li><span>제휴문의</span> <a href="" target="_blank">help@letspl.me</a>
							</li>
						</ul>
					</div>
					<div class="right">
						<ul>
							<li class="tit">바로가기</li>
							<li><a href="">렛플인</a></li>
							<li><a href="">프로젝트</a></li>
							<li><a href="">스토리</a></li>
							<li><a href="">라운지</a></li>
						</ul>
						<ul>
							<li class="tit">이용안내</li>
							<li><a href="">공지사항</a></li>
							<li><a href="">Q&A</a></li>
						</ul>
						<ul>
							<li class="tit">관련사이트</li>
							<li><a href="">네이버 블로그</a></li>
							<li><a href="">티스토리 블로그</a></li>
							<li><a href="">인스타그램</a></li>
							<li><a href="">Velog</a></li>
							<li><a href="">Medium</a></li>
						</ul>
						<ul>
							<li class="tit">서비스약관</li>
							<li><a href="">서비스 이용약관</a></li>
							<li><a href="">개인정보취급방침</a></li>
							<li><a href="">전자금융거래약관</a></li>
							<li><a href="">결제/환불약관</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="footerContentBottom">
				<div class="wrap">
					<div class="left">
						<ul>
							<li>어썸크루</li>
							<li>사업등록번호 : 619-39-00615</li>
							<li>대표 : 이승준</li>
							<li>통신판매신고번호 : 제 2020-서울마포-1796호</li>
							<li>주소 : 서울특별시 마포구 신수동 22-35 하나테크노빌 1002호</li>
							<li>TEL : 070.8064.3497</li>
							<li>개인정보담당자 : 이승준 help@letspl.me</li>
						</ul>
						<p>Copyright ⓒ 2022 LETSPL. All rights reserved.</p>
					</div>
					<div class="right">
						<div class="appLinkWrap">
							<ul>
								<li><a href="" target="_blank"> <img loading="lazy"
										src="https://letspl.me/assets/images/googlePlayBadge.svg"
										alt="렛플 안드로이드앱 다운로드">
								</a></li>
								<li><a href="https://apps.apple.com/kr/app/id1595017110"
									target="_blank"> <img loading="lazy"
										src="https://letspl.me/assets/images/applestorBadge.svg"
										alt="렛플 아이폰앱 다운로드">
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- footer end -->
	</div>
</body>
<script src="../main/modal.js"></script>
<script src="https://kit.fontawesome.com/d25c7e6490.js"
	crossorigin="anonymous"></script>
</html>