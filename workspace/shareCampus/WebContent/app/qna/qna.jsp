<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의게시판</title>
</head>
<link rel="stylesheet" href="qna.css">
<link rel="stylesheet" href="qna_2.css">
<link rel="stylesheet" href="../main/main.css">
</link>

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
    <!-- Content -->
    <div id="loginContainer">
        <div class="member-wrap member_input-wrap large">
            <div class="member-com_title">
                <h1 class="qnatitle">Q&A</h1>
                <p class="com_title_sub">
                    쉐어캠퍼스에서 어떤 점이 궁금하신가요?
                    <br>
                    친절히 답해드리겠습니다.
                </p>
            </div>
            <div class="member-form">
                <div class="text_form">
                    <label for="contactTitle">제목</label>
                    <input type="text" name="title" id="contactTitle" placeholder="제목을 입력해주세요.(최대 20자)">
                </div>
                <div class="text_form">
                    <label for="contactTitle">E-Mail</label>
                    <input type="email" name="email" id="email" placeholder="답변받을 이메일을 작성해주세요.">
                </div>

                <div class="text_form">
                    <label for="contactContent">설명</label>
                    <textarea id="contactContent" name="content" placeholder="내용을 입력해주세요.(최대 1000자)"></textarea>
                </div>
                <p>
                    <input type="button" id="inquire_btn" class="width100_member_btn orange_btn" style="cursor: pointer"
                        value="문의하기">
                </p>
            </div>
        </div>
    </div>
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
    </div>
</body>

</html>