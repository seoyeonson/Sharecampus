<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대외활동</title>
</head>
<link rel="stylesheet" href="activity.css">
<link rel="stylesheet" href="../main/main.css">
<script src="activity.js"></script>
<body>
    <!-- header start -->
    <header class="Header">
        <nav>
            <div class="logo"><a href="../main/index.html">로고</a></div>
            <ul class="Navbar">
                <li><a href="#">커리큘럼</a></li>
                <li><a href="../Study/studyMain.html">스터디</a></li>
                <li><a href="../activity/activity.html">대외활동</a></li>
                <li><a href="../community/community.html">커뮤니티</a></li>
            </ul>
            <div class="loginWrap">
                <div class="searchWrap">
                    <a class="searchIc" href="../search/search.html">
                        <span>검색</span>
                        <img src="https://letspl.me/assets/images/ic-search-white.png">
                    </a>
                </div>
                <div class="joinAndLoginWrap">
                    <a class="joinAndLogin join">가입</a>
                    <a class="joinAndLogin login">로그인</a>
                </div>
            </div>
        </nav>
    </header>
    <!-- header end -->
    <div id="__next">
        <header class="Header"></header>
        <section>
            <div class="commonContentViewHeader">
                <h1 class="projectView">
                    <span class="smTxt">대외활동</span>
                    <span class="bgTxt">대외활동</span>
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
                    </select>
                    <select class="smSelect">
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
                    <select class="smSelect">
                        <option value="0000">활동기간</option>
                        <option value="0001">3개월 이하</option>
                        <option value="0002">3개월~6개월</option>
                        <option value="0003">6개월~1년</option>
                        <option value="0004">1년 이상</option>
                    </select>
                    <div class="activityNew">
                        <a href="activity_new.html">
                            <img src="..\activity\img\activity_new_button.PNG" alt="공고 등록 버튼" >
                        </a>
                    </div>
                </div>
                <div class="projectGridView">
                    <div class="projectGridWrap" onclick="newPage()">
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
                    <div class="projectGridWrap" onclick="location.href='activity_info.html';">
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
    <!-- footer start -->
    <footer class="Footer">
        <div class="footerContent">
            <div class="top">
                <div class="left">
                    <div class="logoWrap">
                        <a>로고</a>
                    </div>
                    <ul>
                        <li>
                            <span>1:1 문의</span>
                            <a href="" target="_blank">운영자 1:1 카카오챗</a>
                        </li>
                        <li>
                            <span>오픈 챗</span>
                            <a href="" target="_blank">&nbsp;&nbsp;코드 2580</a>
                        </li>
                        <li>
                            <span>제휴문의</span>
                            <a href="" target="_blank">help@letspl.me</a>
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
                        <li><a href="../qna/qna.html">Q&A</a></li>
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
                            <li>
                                <a href="" target="_blank">
                                    <img loading="lazy" src="https://letspl.me/assets/images/googlePlayBadge.svg" alt="렛플 안드로이드앱 다운로드">
                                </a>
                            </li>
                            <li>
                                <a href="https://apps.apple.com/kr/app/id1595017110" target="_blank">
                                    <img loading="lazy" src="https://letspl.me/assets/images/applestorBadge.svg" alt="렛플 아이폰앱 다운로드">
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer end -->
</body>
</html>