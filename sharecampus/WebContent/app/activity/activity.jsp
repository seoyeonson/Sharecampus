<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대외활동</title>
</head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/activity/activity.css">
<script
	src="${pageContext.request.contextPath}/assets/js/activity/activity.js"></script>
<body>
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/header.jsp" />
	<section>
		<div class="commonContentViewHeader">
			<h1 class="projectView">
				<span class="smTxt">대외활동</span> <span class="bgTxt">대외활동</span>
			</h1>
		</div>
		<div class="projectView projectAllGridView">
			<h1>전체 대외활동</h1>
			<div class="searchOption">
				<select class="smSelect">
				
					<option value="KR00">지역 미지정</option>
					<option value="KR01">서울특별시</option>
					<option value="KR02">경기도</option>
					<option value="KR03">부산광역시</option>
					<option value="KR04">인천광역시</option>
					<option value="KR05">대구광역시</option>
					<option value="KR06">경상남도</option>
					<option value="KR07">경상북도</option>
					<option value="KR08">대전광역시</option>
					<option value="KR09">충청남도</option>
					<option value="KR10">충청북도</option>
					<option value="KR11">전라남도</option>
					<option value="KR12">전라북도</option>
					<option value="KR13">광주광역시</option>
					<option value="KR14">강원도</option>
					<option value="KR15">울산광역시</option>
					<option value="KR16">제주특별자치도</option>
					<option value="KR17">세종특별자치시</option>
				</select> <select class="smSelect">
					<option value="00">관심분야</option>
					<option value="01">여행/호텔/관광</option>
					<option value="02">언론/미디어</option>
					<option value="03">문화/역사</option>
					<option value="04">행사/페스티벌</option>
					<option value="05">교육</option>
					<option value="06">디자인/사진/예술/영상</option>
					<option value="07">경제/금육</option>
					<option value="08">경영/컨설팅/마케팅</option>
					<option value="09">정치/사회/법률</option>
					<option value="10">체육/헬스</option>
					<option value="11">의료/보건</option>
					<option value="12">뷰티/미용/화장품</option>
					<option value="13">과학/공학/기술/IT</option>
					<option value="14">요리/식품</option>
					<option value="15">창업/자기계발</option>
					<option value="16">환경/에너지</option>
					<option value="17">콘텐츠</option>
					<option value="18">사회공헌/교류</option>
					<option value="19">유통/물류</option>
					<option value="20">기타</option>
				</select>
				<div class="ActivityNew">
					<button class="btn123" onclick="location.href='${pageContext.request.contextPath}/app/activity/activity_new.jsp';">공고
						등록</button>
				</div>
			</div>
			<div class="projectGridView">
				<div class="projectGridWrap" onclick="location.href='${pageContext.request.contextPath}/app/activity/activity_info.jsp';"">
					<div class="projectTopInfo">
						<div class="top">
							<div class="badgeWrap">
								<div class="topBadge purpleLight">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-badge_project_update.png"
                                            alt="업데이트있는 프로젝트" /> -->
								</div>
								<div class="badge blue">
									<h2>(분야)</h2>
								</div>
							</div>
							<div class="favorite"></div>
						</div>
					</div>
					<div class="projectBottomInfo">
						<div class="txtWrap studyTxtWrap">
							<h3 class="category">(지역)</h3>
							<h2 class="tit">(대외활동 제목)</h2>
							<p class="studyCategory">(간략 설명)</p>
							<div class="iconWrap">
								<span style="margin-right: 4px; font-size: 14px">#hashtag</span>
								<span style="margin-right: 4px; font-size: 14px">#해쉬태그</span>
							</div>
						</div>
					</div>
					<div class="projectInfo2">
						<div class="middleWrap">
							<div class="left">
								<div class="heartCount">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-favorite-empty-white.svg"
                                            alt="프로젝트 구독자 수" /> -->
									<span>(좋아요 수)</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="projectGridWrap"
					onclick="location.href='${pageContext.request.contextPath}/app/activity/activity_info.jsp';">
					<div class="projectTopInfo">
						<div class="top">
							<div class="badgeWrap">
								<div class="topBadge purpleLight">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-badge_project_update.png"
                                            alt="업데이트있는 프로젝트" /> -->
								</div>
								<div class="badge blue">
									<h2>(분야)</h2>
								</div>
							</div>
							<div class="favorite"></div>
						</div>
					</div>
					<div class="projectBottomInfo">
						<div class="txtWrap studyTxtWrap">
							<h3 class="category">(지역)</h3>
							<h2 class="tit">(대외활동 제목)</h2>
							<p class="studyCategory">(간략 설명)</p>
							<div class="iconWrap">
								<span style="margin-right: 4px; font-size: 14px">#hashtag</span>
								<span style="margin-right: 4px; font-size: 14px">#해쉬태그</span>
							</div>
						</div>
					</div>
					<div class="projectInfo2">
						<div class="middleWrap">
							<div class="left">
								<div class="heartCount">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-favorite-empty-white.svg"
                                            alt="프로젝트 구독자 수" /> -->
									<span>(좋아요 수)</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="projectGridWrap">
					<div class="projectTopInfo">
						<div class="top">
							<div class="badgeWrap">
								<div class="topBadge purpleLight">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-badge_project_update.png"
                                            alt="업데이트있는 프로젝트" /> -->
								</div>
								<div class="badge blue">
									<h2>(분야)</h2>
								</div>
							</div>
							<div class="favorite"></div>
						</div>
					</div>
					<div class="projectBottomInfo">
						<div class="txtWrap studyTxtWrap">
							<h3 class="category">(지역)</h3>
							<h2 class="tit">(대외활동 제목)</h2>
							<p class="studyCategory">(간략 설명)</p>
							<div class="iconWrap">
								<span style="margin-right: 4px; font-size: 14px">#hashtag</span>
								<span style="margin-right: 4px; font-size: 14px">#해쉬태그</span>
							</div>
						</div>
					</div>
					<div class="projectInfo2">
						<div class="middleWrap">
							<div class="left">
								<div class="heartCount">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-favorite-empty-white.svg"
                                            alt="프로젝트 구독자 수" /> -->
									<span>(좋아요 수)</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="projectGridWrap">
					<div class="projectTopInfo">
						<div class="top">
							<div class="badgeWrap">
								<div class="topBadge purpleLight">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-badge_project_update.png"
                                            alt="업데이트있는 프로젝트" /> -->
								</div>
								<div class="badge blue">
									<h2>(분야)</h2>
								</div>
							</div>
							<div class="favorite"></div>
						</div>
					</div>
					<div class="projectBottomInfo">
						<div class="txtWrap studyTxtWrap">
							<h3 class="category">(지역)</h3>
							<h2 class="tit">(대외활동 제목)</h2>
							<p class="studyCategory">(간략 설명)</p>
							<div class="iconWrap">
								<span style="margin-right: 4px; font-size: 14px">#hashtag</span>
								<span style="margin-right: 4px; font-size: 14px">#해쉬태그</span>
							</div>
						</div>
					</div>
					<div class="projectInfo2">
						<div class="middleWrap">
							<div class="left">
								<div class="heartCount">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-favorite-empty-white.svg"
                                            alt="프로젝트 구독자 수" /> -->
									<span>(좋아요 수)</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="projectGridWrap">
					<div class="projectTopInfo">
						<div class="top">
							<div class="badgeWrap">
								<div class="topBadge purpleLight">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-badge_project_update.png"
                                            alt="업데이트있는 프로젝트" /> -->
								</div>
								<div class="badge blue">
									<h2>(분야)</h2>
								</div>
							</div>
							<div class="favorite"></div>
						</div>
					</div>
					<div class="projectBottomInfo">
						<div class="txtWrap studyTxtWrap">
							<h3 class="category">(지역)</h3>
							<h2 class="tit">(대외활동 제목)</h2>
							<p class="studyCategory">(간략 설명)</p>
							<div class="iconWrap">
								<span style="margin-right: 4px; font-size: 14px">#hashtag</span>
								<span style="margin-right: 4px; font-size: 14px">#해쉬태그</span>
							</div>
						</div>
					</div>
					<div class="projectInfo2">
						<div class="middleWrap">
							<div class="left">
								<div class="heartCount">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-favorite-empty-white.svg"
                                            alt="프로젝트 구독자 수" /> -->
									<span>(좋아요 수)</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="projectGridWrap">
					<div class="projectTopInfo">
						<div class="top">
							<div class="badgeWrap">
								<div class="topBadge purpleLight">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-badge_project_update.png"
                                            alt="업데이트있는 프로젝트" /> -->
								</div>
								<div class="badge blue">
									<h2>(분야)</h2>
								</div>
							</div>
							<div class="favorite"></div>
						</div>
					</div>
					<div class="projectBottomInfo">
						<div class="txtWrap studyTxtWrap">
							<h3 class="category">(지역)</h3>
							<h2 class="tit">(대외활동 제목)</h2>
							<p class="studyCategory">(간략 설명)</p>
							<div class="iconWrap">
								<span style="margin-right: 4px; font-size: 14px">#hashtag</span>
								<span style="margin-right: 4px; font-size: 14px">#해쉬태그</span>
							</div>
						</div>
					</div>
					<div class="projectInfo2">
						<div class="middleWrap">
							<div class="left">
								<div class="heartCount">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-favorite-empty-white.svg"
                                            alt="프로젝트 구독자 수" /> -->
									<span>(좋아요 수)</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="projectGridWrap">
					<div class="projectTopInfo">
						<div class="top">
							<div class="badgeWrap">
								<div class="topBadge purpleLight">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-badge_project_update.png"
                                            alt="업데이트있는 프로젝트" /> -->
								</div>
								<div class="badge black">
									<h2>(분야)</h2>
								</div>
							</div>
							<div class="favorite"></div>
						</div>
					</div>
					<div class="projectBottomInfo">
						<div class="txtWrap studyTxtWrap">
							<h3 class="category">(지역)</h3>
							<h2 class="tit">(대외활동 제목)</h2>
							<p class="studyCategory">(간략 설명)</p>
							<div class="iconWrap">
								<span style="margin-right: 4px; font-size: 14px">#hashtag</span>
								<span style="margin-right: 4px; font-size: 14px">#해쉬태그</span>
							</div>
						</div>
					</div>
					<div class="projectInfo2">
						<div class="middleWrap">
							<div class="left">
								<div class="heartCount">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-favorite-empty-white.svg"
                                            alt="프로젝트 구독자 수" /> -->
									<span>(좋아요 수)</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="projectGridWrap">
					<div class="projectTopInfo">
						<div class="top">
							<div class="badgeWrap">
								<div class="topBadge purpleLight">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-badge_project_update.png"
                                            alt="업데이트있는 프로젝트" /> -->
								</div>
								<div class="badge black">
									<h2>(분야)</h2>
								</div>
							</div>
							<div class="favorite"></div>
						</div>
					</div>
					<div class="projectBottomInfo">
						<div class="txtWrap studyTxtWrap">
							<h3 class="category">(지역)</h3>
							<h2 class="tit">(대외활동 제목)</h2>
							<p class="studyCategory">(간략 설명)</p>
							<div class="iconWrap">
								<span style="margin-right: 4px; font-size: 14px">#hashtag</span>
								<span style="margin-right: 4px; font-size: 14px">#해쉬태그</span>
							</div>
						</div>
					</div>
					<div class="projectInfo2">
						<div class="middleWrap">
							<div class="left">
								<div class="heartCount">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-favorite-empty-white.svg"
                                            alt="프로젝트 구독자 수" /> -->
									<span>(좋아요 수)</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="projectGridWrap">
					<div class="projectTopInfo">
						<div class="top">
							<div class="badgeWrap">
								<div class="topBadge purpleLight">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-badge_project_update.png"
                                            alt="업데이트있는 프로젝트" /> -->
								</div>
								<div class="badge black">
									<h2>(분야)</h2>
								</div>
							</div>
							<div class="favorite"></div>
						</div>
					</div>
					<div class="projectBottomInfo">
						<div class="txtWrap studyTxtWrap">
							<h3 class="category">(지역)</h3>
							<h2 class="tit">(대외활동 제목)</h2>
							<p class="studyCategory">(간략 설명)</p>
							<div class="iconWrap">
								<span style="margin-right: 4px; font-size: 14px">#hashtag</span>
								<span style="margin-right: 4px; font-size: 14px">#해쉬태그</span>
							</div>
						</div>
					</div>
					<div class="projectInfo2">
						<div class="middleWrap">
							<div class="left">
								<div class="heartCount">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-favorite-empty-white.svg"
                                            alt="프로젝트 구독자 수" /> -->
									<span>(좋아요 수)</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="projectGridWrap">
					<div class="projectTopInfo">
						<div class="top">
							<div class="badgeWrap">
								<div class="topBadge purpleLight">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-badge_project_update.png"
                                            alt="업데이트있는 프로젝트" /> -->
								</div>
								<div class="badge black">
									<h2>(분야)</h2>
								</div>
							</div>
							<div class="favorite"></div>
						</div>
					</div>
					<div class="projectBottomInfo">
						<div class="txtWrap studyTxtWrap">
							<h3 class="category">(지역)</h3>
							<h2 class="tit">(대외활동 제목)</h2>
							<p class="studyCategory">(간략 설명)</p>
							<div class="iconWrap">
								<span style="margin-right: 4px; font-size: 14px">#hashtag</span>
								<span style="margin-right: 4px; font-size: 14px">#해쉬태그</span>
							</div>
						</div>
					</div>
					<div class="projectInfo2">
						<div class="middleWrap">
							<div class="left">
								<div class="heartCount">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-favorite-empty-white.svg"
                                            alt="프로젝트 구독자 수" /> -->
									<span>(좋아요 수)</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="projectGridWrap">
					<div class="projectTopInfo">
						<div class="top">
							<div class="badgeWrap">
								<div class="topBadge purpleLight">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-badge_project_update.png"
                                            alt="업데이트있는 프로젝트" /> -->
								</div>
								<div class="badge black">
									<h2>(분야)</h2>
								</div>
							</div>
							<div class="favorite"></div>
						</div>
					</div>
					<div class="projectBottomInfo">
						<div class="txtWrap studyTxtWrap">
							<h3 class="category">(지역)</h3>
							<h2 class="tit">(대외활동 제목)</h2>
							<p class="studyCategory">(간략 설명)</p>
							<div class="iconWrap">
								<span style="margin-right: 4px; font-size: 14px">#hashtag</span>
								<span style="margin-right: 4px; font-size: 14px">#해쉬태그</span>
							</div>
						</div>
					</div>
					<div class="projectInfo2">
						<div class="middleWrap">
							<div class="left">
								<div class="heartCount">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-favorite-empty-white.svg"
                                            alt="프로젝트 구독자 수" /> -->
									<span>(좋아요 수)</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="projectGridWrap">
					<div class="projectTopInfo">
						<div class="top">
							<div class="badgeWrap">
								<div class="topBadge purpleLight">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-badge_project_update.png"
                                            alt="업데이트있는 프로젝트" /> -->
								</div>
								<div class="badge black">
									<h2>(분야)</h2>
								</div>
							</div>
							<div class="favorite"></div>
						</div>
					</div>
					<div class="projectBottomInfo">
						<div class="txtWrap studyTxtWrap">
							<h3 class="category">(지역)</h3>
							<h2 class="tit">(대외활동 제목)</h2>
							<p class="studyCategory">(간략 설명)</p>
							<div class="iconWrap">
								<span style="margin-right: 4px; font-size: 14px">#hashtag</span>
								<span style="margin-right: 4px; font-size: 14px">#해쉬태그</span>
							</div>
						</div>
					</div>
					<div class="projectInfo2">
						<div class="middleWrap">
							<div class="left">
								<div class="heartCount">
									<!-- <img loading="lazy"
                                            src="./렛플 │ 사이드프로젝트_스터디 찾기_files/ic-favorite-empty-white.svg"
                                            alt="프로젝트 구독자 수" /> -->
									<span>(좋아요 수)</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="projectView projectNewsWrap"></div>
				<div class="projectBlueBg"></div>
	</section>
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/modal.js"></script>
</html>