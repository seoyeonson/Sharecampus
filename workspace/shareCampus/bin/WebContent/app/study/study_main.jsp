<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/studyMain.css">
    <title>스터디</title>
</head>

<body>
    <div class="all">
        <jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp" />
        <div id="bigBox">
            <div class="studySelect1">
                <div class="mainStudys">
                    <div class="smallStudy">스터디</div>
                    <h1 class="main">스터디</h1>
                </div>
                <div class="allStd">
                    전체 스터디
                </div>
                <div class="selectionBox">
                    <select class="location1" name="location">
                        <option value="kr00">지역 미지정</option>
                        <option value="kr01">경기도</option>
                        <option value="kr02">부산광역시</option>
                        <option value="kr03">인천광역시</option>
                        <option value="kr04">서울특별시</option>
                        <option value="kr05">대구광역시</option>
                        <option value="kr06">경상남도</option>
                        <option value="kr07">경상북도</option>
                        <option value="kr08">대전광역시</option>
                        <option value="kr09">충청남도</option>
                        <option value="kr10">충청북도</option>
                        <option value="kr11">전라남도</option>
                        <option value="kr12">전라북도</option>
                        <option value="kr13">광주광역시</option>
                        <option value="kr14">강원도</option>
                        <option value="kr15">울산광역시</option>
                        <option value="kr16">제주특별자치도</option>
                        <option value="kr17">세종특별자치시</option>
                    </select>

                    <select class="field1" name="field">
                        <option selected value="0000">모집분야</option>
                        <optgroup label="기획">
                            <option value="0201">UI/UX기획</option>
                            <option value="0202">게임기획</option>
                            <option value="0203">프로젝트 매니저</option>
                            <option value="0204">하드웨어(제품 기획)</option>
                            <option value="0205">(기획)기타</option>
                        </optgroup>
                    </select>
                    <label>
                        <input id="mogip" type="checkbox" checked>
                        <span class="mogiping">모집중</span>
                    </label>
                    <button class="write1" onclick="location.href='studyWrite.html'">스터디 글쓰기</button>
                </div>
            </div>
            <br>
            <div class="pickbox">
                <div class="picka">
                    <div class="study1">
                        스터디
                    </div>
                    <div class="favorite">
                        <button class="heart" type="button" onclick="cli()">
                            <img class="img_heart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="18px" height="18px">
                        </button>
                    </div>
                    <br>
                    <div class="purpose">
                        [C&P] 모집
                    </div>
                    <br>
                    <div class="locat">
                        [서울] [C&P] 모집합니다.
                    </div>
                    <br>
                    <div class="who">
                        [모집중] 누구나 참여가능
                    </div>
                    <br>
                    <div>
                        <button onclick="location.href='studyBoard.html'" class="join1">참가하기</button>
                    </div>
                    <br>
                    <div class="num">
                        <img class="smallheart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="10px" height="10px">
                        <span class="number12">12</span>
                    </div>
                    <br>
                    <hr class="hr">
                    <div class="finish">
                        모집완료 &nbsp <span class="ppl">0/5</span>
                    </div>
                </div>

                <div class="pickb ">
                    <div class="study1">
                        스터디
                    </div>
                    <div class="favorite">
                        <button class="heart" type="button">
                            <img class="img_heart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="18px" height="18px"></button>
                    </div>
                    <br>
                    <div class="purpose">
                        기획&PO스터디
                    </div>
                    <br>
                    <div class="locat">
                        [광주광역시]광주/전남 개발자 커뮤니티
                    </div>
                    <br>
                    <div class="who">
                        [모집중] 누구나 참여가능
                    </div>
                    <br>
                    <div>
                        <button onclick="location.href='studyBoard.html'" class="join1">참가하기</button>
                    </div>
                    <br>
                    <div class="num">
                        <img class="smallheart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="10px" height="10px">
                        <span class="number12">12</span>
                    </div>
                    <br>
                    <hr class="hr">
                    <div class="finish">
                        모집완료 &nbsp <span class="ppl">0/5</span>
                    </div>
                </div>
                <div class="pickc">
                    <div class="study1">
                        스터디
                    </div>
                    <div class="favorite">
                        <button class="heart" type="button">
                            <img class="img_heart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="18px" height="18px"></button>
                    </div>
                    <br>
                    <div class="purpose">
                        기획&PO스터디
                    </div>
                    <br>
                    <div class="locat">
                        [광주광역시]광주/전남 개발자 커뮤니티
                    </div>
                    <br>
                    <div class="who">
                        [모집중] 누구나 참여가능
                    </div>
                    <br>
                    <div>
                        <button onclick="location.href='studyBoard.html'" class="join1">참가하기</button>
                    </div>
                    <br>
                    <div class="num">
                        <img class="smallheart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="10px" height="10px">
                        <span class="number12">12</span>
                    </div>
                    <br>
                    <hr class="hr">
                    <div class="finish">
                        모집완료 &nbsp <span class="ppl">0/5</span>
                    </div>
                </div>
                <div class="pickd">
                    <div class="study1">
                        스터디
                    </div>
                    <div class="favorite">
                        <button class="heart" type="button">
                            <img class="img_heart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="18px" height="18px"></button>
                    </div>
                    <br>
                    <div class="purpose">
                        기획&PO스터디
                    </div>
                    <br>
                    <div class="locat">
                        [광주광역시]광주/전남 개발자 커뮤니티
                    </div>
                    <br>
                    <div class="who">
                        [모집중] 누구나 참여가능
                    </div>
                    <br>
                    <div>
                        <button onclick="location.href='studyBoard.html'" class="join1">참가하기</button>
                    </div>
                    <br>
                    <div class="num">
                        <img class="smallheart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="10px" height="10px">
                        <span class="number12">12</span>
                    </div>
                    <br>
                    <hr class="hr">
                    <div class="finish">
                        모집완료 &nbsp <span class="ppl">0/5</span>
                    </div>
                </div>
                <div class="picka">
                    <div class="study1">
                        스터디
                    </div>
                    <div class="favorite">
                        <button class="heart" type="button">
                            <img class="img_heart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="18px" height="18px"></button>
                    </div>
                    <br>
                    <div class="purpose">
                        기획&PO스터디
                    </div>
                    <br>
                    <div class="locat">
                        [광주광역시]광주/전남 개발자 커뮤니티
                    </div>
                    <br>
                    <div class="who">
                        [모집중] 누구나 참여가능
                    </div>
                    <br>
                    <div>
                        <button onclick="location.href='studyBoard.html'" class="join1">참가하기</button>
                    </div>
                    <br>
                    <div class="num">
                        <img class="smallheart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="10px" height="10px">
                        <span class="number12">12</span>
                    </div>
                    <br>
                    <hr class="hr">
                    <div class="finish">
                        모집완료 &nbsp <span class="ppl">0/5</span>
                    </div>
                </div>

                <div class="pickb ">
                    <div class="study1">
                        스터디
                    </div>
                    <div class="favorite">
                        <button class="heart" type="button">
                            <img class="img_heart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="18px" height="18px"></button>
                    </div>
                    <br>
                    <div class="purpose">
                        기획&PO스터디
                    </div>
                    <br>
                    <div class="locat">
                        [광주광역시]광주/전남 개발자 커뮤니티
                    </div>
                    <br>
                    <div class="who">
                        [모집중] 누구나 참여가능
                    </div>
                    <br>
                    <div>
                        <button onclick="location.href='studyBoard.html'" class="join1">참가하기</button>
                    </div>
                    <br>
                    <div class="num">
                        <img class="smallheart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="10px" height="10px">
                        <span class="number12">12</span>
                    </div>
                    <br>
                    <hr class="hr">
                    <div class="finish">
                        모집완료 &nbsp <span class="ppl">0/5</span>
                    </div>
                </div>
                <div class="pickc">
                    <div class="study1">
                        스터디
                    </div>
                    <div class="favorite">
                        <button class="heart" type="button">
                            <img class="img_heart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="18px" height="18px"></button>
                    </div>
                    <br>
                    <div class="purpose">
                        기획&PO스터디
                    </div>
                    <br>
                    <div class="locat">
                        [광주광역시]광주/전남 개발자 커뮤니티
                    </div>
                    <br>
                    <div class="who">
                        [모집중] 누구나 참여가능
                    </div>
                    <br>
                    <div>
                        <button onclick="location.href='studyBoard.html'" class="join1">참가하기</button>
                    </div>
                    <br>
                    <div class="num">
                        <img class="smallheart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="10px" height="10px">
                        <span class="number12">12</span>
                    </div>
                    <br>
                    <hr class="hr">
                    <div class="finish">
                        모집완료 &nbsp <span class="ppl">0/5</span>
                    </div>
                </div>
                <div class="pickd">
                    <div class="study1">
                        스터디
                    </div>
                    <div class="favorite">
                        <button class="heart" type="button">
                            <img class="img_heart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="18px" height="18px"></button>
                    </div>
                    <br>
                    <div class="purpose">
                        기획&PO스터디
                    </div>
                    <br>
                    <div class="locat">
                        [광주광역시]광주/전남 개발자 커뮤니티
                    </div>
                    <br>
                    <div class="who">
                        [모집중] 누구나 참여가능
                    </div>
                    <br>
                    <div>
                        <button onclick="location.href='studyBoard.html'" class="join1">참가하기</button>
                    </div>
                    <br>
                    <div class="num">
                        <img class="smallheart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="10px" height="10px">
                        <span class="number12">12</span>
                    </div>
                    <br>
                    <hr class="hr">
                    <div class="finish">
                        모집완료 &nbsp <span class="ppl">0/5</span>
                    </div>
                </div>
                <div class="picka">
                    <div class="study1">
                        스터디
                    </div>
                    <div class="favorite">
                        <button class="heart" type="button">
                            <img class="img_heart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="18px" height="18px"></button>
                    </div>
                    <br>
                    <div class="purpose">
                        기획&PO스터디
                    </div>
                    <br>
                    <div class="locat">
                        [광주광역시]광주/전남 개발자 커뮤니티
                    </div>
                    <br>
                    <div class="who">
                        [모집중] 누구나 참여가능
                    </div>
                    <br>
                    <div>
                        <button onclick="location.href='studyBoard.html'" class="join1">참가하기</button>
                    </div>
                    <br>
                    <div class="num">
                        <img class="smallheart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="10px" height="10px">
                        <span class="number12">12</span>
                    </div>
                    <br>
                    <hr class="hr">
                    <div class="finish">
                        모집완료 &nbsp <span class="ppl">0/5</span>
                    </div>
                </div>

                <div class="pickb ">
                    <div class="study1">
                        스터디
                    </div>
                    <div class="favorite">
                        <button class="heart" type="button">
                            <img class="img_heart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="18px" height="18px"></button>
                    </div>
                    <br>
                    <div class="purpose">
                        기획&PO스터디
                    </div>
                    <br>
                    <div class="locat">
                        [광주광역시]광주/전남 개발자 커뮤니티
                    </div>
                    <br>
                    <div class="who">
                        [모집중] 누구나 참여가능
                    </div>
                    <br>
                    <div>
                        <button onclick="location.href='studyBoard.html'" class="join1">참가하기</button>
                    </div>
                    <br>
                    <div class="num">
                        <img class="smallheart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="10px" height="10px">
                        <span class="number12">12</span>
                    </div>
                    <br>
                    <hr class="hr">
                    <div class="finish">
                        모집완료 &nbsp <span class="ppl">0/5</span>
                    </div>
                </div>
                <div class="pickc">
                    <div class="study1">
                        스터디
                    </div>
                    <div class="favorite">
                        <button class="heart" type="button">
                            <img class="img_heart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="18px" height="18px"></button>
                    </div>
                    <br>
                    <div class="purpose">
                        기획&PO스터디
                    </div>
                    <br>
                    <div class="locat">
                        [광주광역시]광주/전남 개발자 커뮤니티
                    </div>
                    <br>
                    <div class="who">
                        [모집중] 누구나 참여가능
                    </div>
                    <br>
                    <div>
                        <button onclick="location.href='studyBoard.html'" class="join1">참가하기</button>
                    </div>
                    <br>
                    <div class="num">
                        <img class="smallheart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="10px" height="10px">
                        <span class="number12">12</span>
                    </div>
                    <br>
                    <hr class="hr">
                    <div class="finish">
                        모집완료 &nbsp <span class="ppl">0/5</span>
                    </div>
                </div>
                <div class="pickd">
                    <div class="study1">
                        스터디
                    </div>
                    <div class="favorite">
                        <button class="heart" type="button">
                            <img class="img_heart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="18px" height="18px"></button>
                    </div>
                    <br>
                    <div class="purpose">
                        기획&PO스터디
                    </div>
                    <br>
                    <div class="locat">
                        [광주광역시]광주/전남 개발자 커뮤니티
                    </div>
                    <br>
                    <div class="who">
                        [모집중] 누구나 참여가능
                    </div>
                    <br>
                    <div>
                        <button onclick="location.href='studyBoard.html'" class="join1">참가하기</button>
                    </div>
                    <br>
                    <div class="num">
                        <img class="smallheart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="10px" height="10px">
                        <span class="number12">12</span>
                    </div>
                    <br>
                    <hr class="hr">
                    <div class="finish">
                        모집완료 &nbsp <span class="ppl">0/5</span>
                    </div>
                </div>
                <div class="picka">
                    <div class="study1">
                        스터디
                    </div>
                    <div class="favorite">
                        <button class="heart" type="button">
                            <img class="img_heart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="18px" height="18px"></button>
                    </div>
                    <br>
                    <div class="purpose">
                        기획&PO스터디
                    </div>
                    <br>
                    <div class="locat">
                        [광주광역시]광주/전남 개발자 커뮤니티
                    </div>
                    <br>
                    <div class="who">
                        [모집중] 누구나 참여가능
                    </div>
                    <br>
                    <div>
                        <button onclick="location.href='studyBoard.html'" class="join1">참가하기</button>
                    </div>
                    <br>
                    <div class="num">
                        <img class="smallheart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="10px" height="10px">
                        <span class="number12">12</span>
                    </div>
                    <br>
                    <hr class="hr">
                    <div class="finish">
                        모집완료 &nbsp <span class="ppl">0/5</span>
                    </div>
                </div>

                <div class="pickb ">
                    <div class="study1">
                        스터디
                    </div>
                    <div class="favorite">
                        <button class="heart" type="button">
                            <img class="img_heart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="18px" height="18px"></button>
                    </div>
                    <br>
                    <div class="purpose">
                        기획&PO스터디
                    </div>
                    <br>
                    <div class="locat">
                        [광주광역시]광주/전남 개발자 커뮤니티
                    </div>
                    <br>
                    <div class="who">
                        [모집중] 누구나 참여가능
                    </div>
                    <br>
                    <div>
                        <button onclick="location.href='studyBoard.html'" class="join1">참가하기</button>
                    </div>
                    <br>
                    <div class="num">
                        <img class="smallheart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="10px" height="10px">
                        <span class="number12">12</span>
                    </div>
                    <br>
                    <hr class="hr">
                    <div class="finish">
                        모집완료 &nbsp <span class="ppl">0/5</span>
                    </div>
                </div>
                <div class="pickc">
                    <div class="study1">
                        스터디
                    </div>
                    <div class="favorite">
                        <button class="heart" type="button">
                            <img class="img_heart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="18px" height="18px"></button>
                    </div>
                    <br>
                    <div class="purpose">
                        기획&PO스터디
                    </div>
                    <br>
                    <div class="locat">
                        [광주광역시]광주/전남 개발자 커뮤니티
                    </div>
                    <br>
                    <div class="who">
                        [모집중] 누구나 참여가능
                    </div>
                    <br>
                    <div>
                        <button onclick="location.href='studyBoard.html'" class="join1">참가하기</button>
                    </div>
                    <br>
                    <div class="num">
                        <img class="smallheart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="10px" height="10px">
                        <span class="number12">12</span>
                    </div>
                    <br>
                    <hr class="hr">
                    <div class="finish">
                        모집완료 &nbsp <span class="ppl">0/5</span>
                    </div>
                </div>
                <div class="pickd">
                    <div class="study1">
                        스터디
                    </div>
                    <div class="favorite">
                        <button class="heart" type="button" name="btn_heart">
                            <img class="img_heart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="18px" height="18px"></button>
                    </div>
                    <br>
                    <div class="purpose">
                        기획&PO스터디
                    </div>
                    <br>
                    <div class="locat">
                        [광주광역시]광주/전남 개발자 커뮤니티
                    </div>
                    <br>
                    <div class="who">
                        [모집중] 누구나 참여가능
                    </div>
                    <br>
                    <div>
                        <button onclick="location.href='studyBoard.html'" class="join1">참가하기</button>
                    </div>
                    <br>
                    <div class="num">
                        <img class="smallheart" src="${pageContext.request.contextPath}/app/assets/images/heart-empty.png" width="10px" height="10px">
                        <span class="number12">12</span>
                    </div>
                    <br>
                    <hr class="hr">
                    <div class="finish">
                        모집완료 &nbsp; <span class="ppl">0/5</span>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
		<jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
    </div>

</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/app/assets/js/studyMain.js"></script>

</html>