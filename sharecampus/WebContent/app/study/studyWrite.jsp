<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스터디 모집 글쓰기</title>
    <!-- 인원수 모집란에 증감 화살표 삭제 -->
    <style>
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        input[type=number] {
            -moz-appearance: textfield;
        }
    </style>
    <!-- 에러 무시 문제 없음 -->
</head>
<link rel="stylesheet" href="../main/main.css">
<link rel="stylesheet" href="studyWrite.css">
<script type="text/javascript" src="studyWrite.js"></script>

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


    <form id="container">
        <div class="section">
            <h2>스터디 모집 개요</h2>
            <p class="caution">* 별표 표시는 필수 항목입니다.</p>
            <p class="input"><input type="text" name="title" placeholder="제목 *" maxlength="40" autocomplete="off">
            <h3>분야 *</h3>
            <div class="group category">
                <label class="checkbox"><input type="radio" name="category" value="01">여행/호텔/관광</label>
                <label class="checkbox"><input type="radio" name="category" value="02">언론/미디어</label>
                <label class="checkbox"><input type="radio" name="category" value="03">문화/역사</label>
                <label class="checkbox"><input type="radio" name="category" value="04">행사/페스티벌</label>
                <label class="checkbox"><input type="radio" name="category" value="05">교육</label>
                <label class="checkbox"><input type="radio" name="category" value="06">디자인/사진/예술</label>
                <label class="checkbox"><input type="radio" name="category" value="07">경제/금융</label>
                <label class="checkbox"><input type="radio" name="category" value="08">경영/컨설팅/마케팅</label>
                <label class="checkbox"><input type="radio" name="category" value="09">정치/사회/법률</label>
                <label class="checkbox"><input type="radio" name="category" value="10">체육/헬스</label>
                <label class="checkbox"><input type="radio" name="category" value="11">의료/보건</label>
                <label class="checkbox"><input type="radio" name="category" value="12">뷰티/미용/화장품</label>
                <label class="checkbox"><input type="radio" name="category" value="13">과학/공학/기술/IT</label>
                <label class="checkbox"><input type="radio" name="category" value="14">요리/식품</label>
                <label class="checkbox"><input type="radio" name="category" value="15">창업/자기계발</label>
                <label class="checkbox"><input type="radio" name="category" value="16">환경/에너지</label>
                <label class="checkbox"><input type="radio" name="category" value="17">콘텐츠</label>
                <label class="checkbox"><input type="radio" name="category" value="18">사회공헌/교류</label>
                <label class="checkbox"><input type="radio" name="category" value="19">유통/물류</label>
                <label class="checkbox"><input type="radio" name="category" value="20">기타</label>
            </div>
            <h3>접수 기간 *</h3>
            <p class="input small"><input type="date" name="start_date" autocomplete="off" class="date"><span>부터</span>
            </p>
            <p class="input small"><input type="date" name="end_date" autocomplete="off" class="date"><span>까지</span>
            </p>
            <h3>활동기간 *</h3>
            <div class="group">
                <label class="checkbox"><input type="radio" name="period" value="0001">3개월 이하</label>
                <label class="checkbox"><input type="radio" name="period" value="0002">3개월~6개월</label>
                <label class="checkbox"><input type="radio" name="period" value="0003">6개월~1년</label>
                <label class="checkbox"><input type="radio" name="period" value="0004">1년 이상</label>
            </div>
            <h3>모집인원</h3>
            <p class="input medium"><input type="number" min="0" name="num_people" placeholder="인원수" maxlength="40"
                    autocomplete="off"></p>
        </div>
        <div class="section">
            <h2>상세 내용</h2>
            <p class="input"><textarea name="description"
                    placeholder="※ 개요, 주제, 일정, 참가자격, 시상내역 및 혜택, 활동내용, 유의사항, 접수방법, 문의처 등 상세 내용을 자유롭게 적어주세요."></textarea>
            </p>
        </div>


        <div class="section">
            <h2>유의사항</h2>
            <ul class="description">
                <li>스터디 모집 정보만 게시할 수 있습니다. 동아리, 대외활동, 구인 등의 정보는 다른 커뮤니티를 이용해주세요.</li>
                <li>스터디 모집의 경우 봉사활동, 기자단, 서포터즈, 홍보대사, 마케터에 해당하는 스터디 모집만 게시할 수 있습니다.</li>
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
                    <li>그 외 <a href="/page/rules">커뮤니티 이용규칙</a>에 어긋나거나, 커뮤니티 성격에 부적합하다고 판단되는 경우</li>
                </ul>
            </ul>
        </div>
        <div class="submit"><input type="submit" value="글쓰기"></div>
    </form>


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
                                    <img loading="lazy" src="https://letspl.me/assets/images/googlePlayBadge.svg"
                                        alt="렛플 안드로이드앱 다운로드">
                                </a>
                            </li>
                            <li>
                                <a href="https://apps.apple.com/kr/app/id1595017110" target="_blank">
                                    <img loading="lazy" src="https://letspl.me/assets/images/applestorBadge.svg"
                                        alt="렛플 아이폰앱 다운로드">
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