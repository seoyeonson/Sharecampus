<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쉐어캠퍼스</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main/main_curriculum.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/study/studyMain.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main/main_study.css">
</head>
<body>
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/header.jsp" />
	<div>
		<!-- main start -->
		<main>
			<!-- main banner -->
			<section>
				<div class="headerImage">
					<div class="headerCommonLayout headerBgBlack">
						<div class="wrap">
							<ul class="slider">
								<li><img
									src="https://letspl.me/assets/images/top-main-img-4.png" alt="">
								</li>
							</ul>
						</div>
					</div>
				</div>
			</section>
			<!--main contents start -->
			<!-- new study section start -->
			<section>
				<div class="hotProjectWrap wrap mainWrap">
					<h1>
						<span class="bigTxt">새로운 커리큘럼</span>
					</h1>
					<div class="result-view">
						<ul id="curriculum_ul"
							class="curriculum-list curriculum_min_height flex">
							<!-- study content start -->
							<li>
								<div class="curriculum-list_box">
									<div class="curri_img"></div>
									<div class="top-curriculum-info">
										<!-- <img 
											src="https://d1qzykz9iz00c7.cloudfront.net/static/logo/logo_c290.jpg"
											class="university-logo ls-is-cached lazyloaded"> -->
										<img
											src="${pageContext.request.contextPath}/assets/images/curriculum/certi.png"
											class="university-logo ls-is-cached lazyloaded"> <span
											class="recommend-label recommend">컴퓨터</span>


										<!-- <span class="bookmark"><i class="fa-solid fa-heart"></i></span> -->
										<a
											href="http://localhost:8085/app/curriculum/curriculum_detail.do?curri_num=1"
											style="padding-bottom: 6px">

											<div class="info-category">
												<p class="univer_name td-text-style">
													<strong>IT대학교</strong>
												</p>
											</div>
											<div class="curriculum-segment">
												<p class="curriculum-name">
													<span class="curriculum-brief-info">웹개발/3학점/4.5학년</span><br>제목
												</p>
												<div class="curriculum-rank">
													<!-- <span class="rank-mark checked"></span> <span
													class="rank-mark checked"></span> <span
													class="rank-mark checked"></span> <span
													class="rank-mark checked"></span> <span class="rank-mark"></span>
												<span class="rank-mark-number recommend-rank-mark-number">4.0</span> -->
													<strong style="color: orange;">종합 만족도 : 3.75점</strong>
												</div>
											</div>
										</a>
									</div>

									<div></div>
								</div>
							</li>
							<li>
								<div class="curriculum-list_box">
									<div class="curri_img"></div>
									<div class="top-curriculum-info">
										<!-- <img 
											src="https://d1qzykz9iz00c7.cloudfront.net/static/logo/logo_c290.jpg"
											class="university-logo ls-is-cached lazyloaded"> -->
										<img
											src="${pageContext.request.contextPath}/assets/images/curriculum/certi.png"
											class="university-logo ls-is-cached lazyloaded"> <span
											class="recommend-label recommend">컴퓨터</span>


										<!-- <span class="bookmark"><i class="fa-solid fa-heart"></i></span> -->
										<a
											href="http://localhost:8085/app/curriculum/curriculum_detail.do?curri_num=1"
											style="padding-bottom: 6px">
											<div class="info-category">
												<p class="univer_name td-text-style">
													<strong>IT대학교</strong>
												</p>

											</div>
											<div class="curriculum-segment">
												<p class="curriculum-name">
													<span class="curriculum-brief-info">웹개발/3학점/4.5학년</span><br>제목
												</p>
												<div class="curriculum-rank">
													<!-- <span class="rank-mark checked"></span> <span
														class="rank-mark checked"></span> <span
														class="rank-mark checked"></span> <span
														class="rank-mark checked"></span> <span class="rank-mark"></span>
													<span class="rank-mark-number recommend-rank-mark-number">4.0</span> -->
													<strong style="color: orange;">종합 만족도 : 3.75점</strong>
												</div>
											</div>
										</a>
									</div>

									<div></div>
								</div>
							</li>
							<li>
								<div class="curriculum-list_box">
									<div class="curri_img"></div>
									<div class="top-curriculum-info">
										<!-- <img 
											src="https://d1qzykz9iz00c7.cloudfront.net/static/logo/logo_c290.jpg"
											class="university-logo ls-is-cached lazyloaded"> -->
										<img
											src="${pageContext.request.contextPath}/assets/images/curriculum/certi.png"
											class="university-logo ls-is-cached lazyloaded"> <span
											class="recommend-label recommend">컴퓨터</span>


										<!-- <span class="bookmark"><i class="fa-solid fa-heart"></i></span> -->
										<a
											href="http://localhost:8085/app/curriculum/curriculum_detail.do?curri_num=1"
											style="padding-bottom: 6px">
											<div class="info-category">
												<p class="univer_name td-text-style">
													<strong>IT대학교</strong>
												</p>

											</div>
											<div class="curriculum-segment">
												<p class="curriculum-name">
													<span class="curriculum-brief-info">웹개발/3학점/4.5학년</span><br>제목
												</p>
												<div class="curriculum-rank">
													<!-- <span class="rank-mark checked"></span> <span
														class="rank-mark checked"></span> <span
														class="rank-mark checked"></span> <span
														class="rank-mark checked"></span> <span class="rank-mark"></span>
													<span class="rank-mark-number recommend-rank-mark-number">4.0</span> -->
													<strong style="color: orange;">종합 만족도 : 3.75점</strong>
												</div>
											</div>
										</a>
									</div>

									<div></div>
								</div>
							</li>
							<li>
								<div class="curriculum-list_box">
									<div class="curri_img"></div>
									<div class="top-curriculum-info">
										<!-- <img 
											src="https://d1qzykz9iz00c7.cloudfront.net/static/logo/logo_c290.jpg"
											class="university-logo ls-is-cached lazyloaded"> -->
										<img
											src="${pageContext.request.contextPath}/assets/images/curriculum/certi.png"
											class="university-logo ls-is-cached lazyloaded"> <span
											class="recommend-label recommend">컴퓨터</span>


										<!-- <span class="bookmark"><i class="fa-solid fa-heart"></i></span> -->
										<a
											href="http://localhost:8085/app/curriculum/curriculum_detail.do?curri_num=1"
											style="padding-bottom: 6px">
											<div class="info-category">
												<p class="univer_name td-text-style">
													<strong>IT대학교</strong>
												</p>

											</div>
											<div class="curriculum-segment">
												<p class="curriculum-name">
													<span class="curriculum-brief-info">웹개발/3학점/4.5학년</span><br>제목
												</p>
												<div class="curriculum-rank">
													<!-- <span class="rank-mark checked"></span> <span
														class="rank-mark checked"></span> <span
														class="rank-mark checked"></span> <span
														class="rank-mark checked"></span> <span class="rank-mark"></span>
													<span class="rank-mark-number recommend-rank-mark-number">4.0</span> -->
													<strong style="color: orange;">종합 만족도 : 3.75점</strong>
												</div>
											</div>
										</a>
									</div>

									<div></div>
								</div>
							</li>
						</ul>
					</div>
				</div>

			</section>
			<!-- new study section end -->
			<!-- hot story start -->
			<section>
				<div class="wrap hotProjectWrap mainWrap">
					<h1>
						<span class="bigTxt">모집중인 스터디</span>
					</h1>
					<div class="projectGridView">
						<!-- 전체 글상자 -->
						<!-- 단일 글 상자 시작 -->
						<div class="projectGridWrap" onclick="newPage()">
							<div class="projectTopInfo">
								<div class="top">
									<div class="badgeWrap">
										<div class="topBadge purpleLight"></div>
										<div class="badge blue">
											<h2>서울</h2>
										</div>
									</div>
									<div class="favorite"></div>
								</div>
							</div>
							<div class="projectBottomInfo">
								<div class="txtWrap studyTxtWrap">
									<h3 class="category">컴퓨터</h3>
									<h2 class="tit">웹개발</h2>
									<p class="studyCategory">풀스텍 웹개발 스터디</p>
									<div class="iconWrap">
										<span style="margin-right: 4px; font-size: 14px">#컴퓨터</span> <span
											style="margin-right: 4px; font-size: 14px">#웹개발</span>
									</div>
								</div>
							</div>
							<div class="projectInfo2">
								<div class="middleWrap">
									<div class="left">
										<div class="heartCount">
											<span>3</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="projectGridWrap" onclick="newPage()">
							<div class="projectTopInfo">
								<div class="top">
									<div class="badgeWrap">
										<div class="topBadge purpleLight"></div>
										<div class="badge blue">
											<h2>서울</h2>
										</div>
									</div>
									<div class="favorite"></div>
								</div>
							</div>
							<div class="projectBottomInfo">
								<div class="txtWrap studyTxtWrap">
									<h3 class="category">컴퓨터</h3>
									<h2 class="tit">웹개발</h2>
									<p class="studyCategory">풀스텍 웹개발 스터디</p>
									<div class="iconWrap">
										<span style="margin-right: 4px; font-size: 14px">#컴퓨터</span> <span
											style="margin-right: 4px; font-size: 14px">#웹개발</span>
									</div>
								</div>
							</div>
							<div class="projectInfo2">
								<div class="middleWrap">
									<div class="left">
										<div class="heartCount">
											<span>3</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="projectGridWrap" onclick="newPage()">
							<div class="projectTopInfo">
								<div class="top">
									<div class="badgeWrap">
										<div class="topBadge purpleLight"></div>
										<div class="badge blue">
											<h2>서울</h2>
										</div>
									</div>
									<div class="favorite"></div>
								</div>
							</div>
							<div class="projectBottomInfo">
								<div class="txtWrap studyTxtWrap">
									<h3 class="category">컴퓨터</h3>
									<h2 class="tit">웹개발</h2>
									<p class="studyCategory">풀스텍 웹개발 스터디</p>
									<div class="iconWrap">
										<span style="margin-right: 4px; font-size: 14px">#컴퓨터</span> <span
											style="margin-right: 4px; font-size: 14px">#웹개발</span>
									</div>
								</div>
							</div>
							<div class="projectInfo2">
								<div class="middleWrap">
									<div class="left">
										<div class="heartCount">
											<span>3</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="projectGridWrap" onclick="newPage()">
							<div class="projectTopInfo">
								<div class="top">
									<div class="badgeWrap">
										<div class="topBadge purpleLight"></div>
										<div class="badge blue">
											<h2>서울</h2>
										</div>
									</div>
									<div class="favorite"></div>
								</div>
							</div>
							<div class="projectBottomInfo">
								<div class="txtWrap studyTxtWrap">
									<h3 class="category">컴퓨터</h3>
									<h2 class="tit">웹개발</h2>
									<p class="studyCategory">풀스텍 웹개발 스터디</p>
									<div class="iconWrap">
										<span style="margin-right: 4px; font-size: 14px">#컴퓨터</span> <span
											style="margin-right: 4px; font-size: 14px">#웹개발</span>
									</div>
								</div>
							</div>
							<div class="projectInfo2">
								<div class="middleWrap">
									<div class="left">
										<div class="heartCount">
											<span>3</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
	</div>
	<!-- hot story end -->
	<!-- open chat start -->
	<section class="bannerSection">
		<div class="carousel-root">
			<div class="bannerWrap">
				<p class="lgTxt">쉐어캠퍼스 스터디</p>
				<p class="smTxt">새로운 스터디에 참여해보세요!</p>
				<a href="/study/write.su">스터디 만들기</a>
			</div>
		</div>
	</section>
	<!-- open chat end -->
	<!-- studying start -->
	<section>
		<div class="hotProjectWrap wrap mainWrap">
			<h1>
				<span class="bigTxt">모집중인 대외활동</span>
			</h1>
			<div class="projectGridView">
				<!-- 전체 글상자 -->
				<!-- 단일 글 상자 시작 -->
				<div class="projectGridWrap" onclick="newPage()">
					<div class="projectTopInfo">
						<div class="top">
							<div class="badgeWrap">
								<div class="topBadge purpleLight"></div>
								<div class="badge blue">
									<h2>서울</h2>
								</div>
							</div>
							<div class="favorite"></div>
						</div>
					</div>
					<div class="projectBottomInfo">
						<div class="txtWrap studyTxtWrap">
							<h3 class="category">컴퓨터</h3>
							<h2 class="tit">웹개발</h2>
							<p class="studyCategory">풀스텍 웹개발 스터디</p>
							<div class="iconWrap">
								<span style="margin-right: 4px; font-size: 14px">#컴퓨터</span> <span
									style="margin-right: 4px; font-size: 14px">#웹개발</span>
							</div>
						</div>
					</div>
					<div class="projectInfo2">
						<div class="middleWrap">
							<div class="left">
								<div class="heartCount">
									<span>3</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="projectGridWrap" onclick="newPage()">
					<div class="projectTopInfo">
						<div class="top">
							<div class="badgeWrap">
								<div class="topBadge purpleLight"></div>
								<div class="badge blue">
									<h2>서울</h2>
								</div>
							</div>
							<div class="favorite"></div>
						</div>
					</div>
					<div class="projectBottomInfo">
						<div class="txtWrap studyTxtWrap">
							<h3 class="category">컴퓨터</h3>
							<h2 class="tit">웹개발</h2>
							<p class="studyCategory">풀스텍 웹개발 스터디</p>
							<div class="iconWrap">
								<span style="margin-right: 4px; font-size: 14px">#컴퓨터</span> <span
									style="margin-right: 4px; font-size: 14px">#웹개발</span>
							</div>
						</div>
					</div>
					<div class="projectInfo2">
						<div class="middleWrap">
							<div class="left">
								<div class="heartCount">
									<span>3</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="projectGridWrap" onclick="newPage()">
					<div class="projectTopInfo">
						<div class="top">
							<div class="badgeWrap">
								<div class="topBadge purpleLight"></div>
								<div class="badge blue">
									<h2>서울</h2>
								</div>
							</div>
							<div class="favorite"></div>
						</div>
					</div>
					<div class="projectBottomInfo">
						<div class="txtWrap studyTxtWrap">
							<h3 class="category">컴퓨터</h3>
							<h2 class="tit">웹개발</h2>
							<p class="studyCategory">풀스텍 웹개발 스터디</p>
							<div class="iconWrap">
								<span style="margin-right: 4px; font-size: 14px">#컴퓨터</span> <span
									style="margin-right: 4px; font-size: 14px">#웹개발</span>
							</div>
						</div>
					</div>
					<div class="projectInfo2">
						<div class="middleWrap">
							<div class="left">
								<div class="heartCount">
									<span>3</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="projectGridWrap" onclick="newPage()">
					<div class="projectTopInfo">
						<div class="top">
							<div class="badgeWrap">
								<div class="topBadge purpleLight"></div>
								<div class="badge blue">
									<h2>서울</h2>
								</div>
							</div>
							<div class="favorite"></div>
						</div>
					</div>
					<div class="projectBottomInfo">
						<div class="txtWrap studyTxtWrap">
							<h3 class="category">컴퓨터</h3>
							<h2 class="tit">웹개발</h2>
							<p class="studyCategory">풀스텍 웹개발 스터디</p>
							<div class="iconWrap">
								<span style="margin-right: 4px; font-size: 14px">#컴퓨터</span> <span
									style="margin-right: 4px; font-size: 14px">#웹개발</span>
							</div>
						</div>
					</div>
					<div class="projectInfo2">
						<div class="middleWrap">
							<div class="left">
								<div class="heartCount">
									<span>3</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- review end -->
	<!-- main end -->
	</main>
	</div>
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main/modal.js"></script>
</html>