<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커리큘럼</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="${pageContext.request.contextPath}/app/assets/css/curriculum.css" rel="stylesheet">
</head>
<body>
    <div>
        <jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp" />
        <!-- main start -->
        <main>
            <section class="curriculumSection">
                <!-- 메뉴 헤더 -->
                <div class="curriculum_header">
                    <h1>
                        <span class="smTxt" style="font-size: 0.9rem;">나눠봐요</span>
                        <span class="bgTxt">커리큘럼</span>
                    </h1>
                </div>
                <!-- 커리큘럼 Wrap -->
                <div class="curriculum-list_wrap" style="height: auto !important;">
                    <!-- 총 커리큘럼 개수 -->
                    <div class="curriculum-title_wrap">
                        <h3 class="list-title">총 <span id="curriculum_count" class="filter-search-result">1000+</span>건의대학 리뷰</h3>
                        <!-- <a class="curriculum-regist" href="curriculum_regist.html">
                            <span>커리큘럼 작성</span>
                        </a> -->
                    </div>
                    <!-- 과 카테고리 선택 -->
                    <div class="departments">
                        <a href="" class="department">경영·경제</a>
                        <a href="" class="department">컴퓨터·전기·전자</a>
                        <a href="" class="department">기계</a>
                        <a href="" class="department">건축·토목</a>
                        <a href="" class="department">재료·산업·안전</a>
                        <a href="" class="department">농림·수산·축산</a>
                        <a href="" class="department">사회과학</a>
                        <a href="" class="department">간호</a>
                        <a href="" class="department">화공·에너지</a>
                        <a href="" class="department">화학·생명·환경</a>
                        <a href="" class="department">수학·물리·천문</a>
                        <a href="" class="department">교육</a>
                        <a href="" class="department">언어·문학</a>
                        <a href="" class="department">인문학</a>
                        <a href="" class="department">미술·응용예술</a>
                        <a href="" class="department">생활과학</a>
                        <a href="" class="department">음악·연극·영화</a>
                        <a href="" class="department">체육·무용</a>
                    </div>
                    <!-- 커리큘럼 목록 -->
                    <div class="result-view">
                        <ul id="curriculum_ul" class="curriculum-list curriculum_min_height flex">
                            <!-- curriculum content start -->
                            <li>
                                <a href="curriculum_detail.html" style="padding-bottom: 6px">
                                    <div class="curriculum-list_box">
                                        <!-- <span class="recommend-label recommend">추천&nbsp;&nbsp;<i class="far fa-thumbs-up"></i></span> -->
                                        <div class="top-curriculum-info">
                                            <img src="https://d1qzykz9iz00c7.cloudfront.net/static/logo/logo_c290.jpg" class="university-logo ls-is-cached lazyloaded">
                                            <div class="info-category">
                                                <p class="univer_name td-text-style">대구보건대학교</p>
                                                <p class="user_name td-text-style">홍길동</p>
                                            </div>
                                            <div class="curriculum-segment">
                                                <span class="recommend-label recommend">컴퓨터공학과</span>
                                                <p class="curriculum-name"><span class="curriculum-brief-info">교양/3학점/1학년</span><br>컴퓨터의 개념 및 실습</p>
                                                <div class="curriculum-rank">
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark"></span>
                                                    <span class="rank-mark-number recommend-rank-mark-number">4.0</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="area-line"></div>
                                        <div class="uni-info_text_wrap">
                                            <div class="curriculum-review">
                                                <h4 class="good">장점</h4>
                                                <p class="td-text-style">
                                                    의료기사 중에서 유일하게 창업이 가능한 점이 좋음 실력을 쌓아서 자기가 기공소를 차려도 되고 해외취업이나 치과로 취업해도되고 학력을 더 쌓...
                                                </p>
                                            </div>
                                            <div class="curriculum-review">
                                                <h4 class="bad">단점</h4>
                                                <p class="td-text-style">
                                                    너무 계단이 에바임 여름에 쪄죽음. 등록금이 비쌈. 사람들이 우리과에 대해 좋게 생각하는 사람들이 드뭄
                                                </p>
                                            </div>
                                        </div>
                                        <div class="sub-info td-text-style">
                                            <span><i class="far fa-eye"></i><span>46</span></span>
                                            <span><i class="far fa-heart"></i><span>0</span></span>
                                            <span><i class="far fa-comment-dots"></i><span>0</span></span>
                                        </div>
                                        <div></div>
                                    </div>
                                </a>
                            </li>
                            <!-- curriculum content end -->
                            <!-- curriculum content start -->
                            <li>
                                <a href="" style="padding-bottom: 6px">
                                    <div class="curriculum-list_box">
                                        <span class="recommend-label recommend">수학교육과</span>
                                        <!-- <span class="recommend-label recommend">추천&nbsp;&nbsp;<i class="far fa-thumbs-up"></i></span> -->
                                        <div class="top-curriculum-info">
                                            <img src="https://d1qzykz9iz00c7.cloudfront.net/static/logo/logo_c226.jpg" class="university-logo ls-is-cached lazyloaded">
                                            <div class="info-category">
                                                <p class="univer_name td-text-style">한국항공대학교</p>
                                                <p class="user_name td-text-style">홍길동</p>
                                            </div>
                                            <div class="curriculum-segment">
                                                <p class="curriculum-name"><span class="curriculum-brief-info">교양/3학점/1학년</span><br>수학 논리 및 논술</p>
                                                <div class="curriculum-rank">
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark"></span>
                                                    <span class="rank-mark-number recommend-rank-mark-number">4.0</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="area-line"></div>
                                        <div class="uni-info_text_wrap">
                                            <div class="curriculum-review">
                                                <h4 class="good">장점</h4>
                                                <p class="td-text-style">
                                                    의료기사 중에서 유일하게 창업이 가능한 점이 좋음 실력을 쌓아서 자기가 기공소를 차려도 되고 해외취업이나 치과로 취업해도되고 학력을 더 쌓...
                                                </p>
                                            </div>
                                            <div class="curriculum-review">
                                                <h4 class="bad">단점</h4>
                                                <p class="td-text-style">
                                                    너무 계단이 에바임 여름에 쪄죽음. 등록금이 비쌈. 사람들이 우리과에 대해 좋게 생각하는 사람들이 드뭄
                                                </p>
                                            </div>
                                        </div>
                                        <div class="sub-info td-text-style">
                                            <span><i class="far fa-eye"></i><span>46</span></span>
                                            <span><i class="far fa-heart"></i><span>0</span></span>
                                            <span><i class="far fa-comment-dots"></i><span>0</span></span>
                                        </div>
                                        <div></div>
                                    </div>
                                </a>
                            </li>
                            <!-- curriculum content end -->
                            <!-- curriculum content start -->
                            <li>
                                <a href="" style="padding-bottom: 6px">
                                    <div class="curriculum-list_box">
                                        <span class="recommend-label recommend">컴퓨터공학과</span>
                                        <!-- <span class="recommend-label recommend">추천&nbsp;&nbsp;<i class="far fa-thumbs-up"></i></span> -->
                                        <div class="top-curriculum-info">
                                            <img src="https://d1qzykz9iz00c7.cloudfront.net/static/logo/logo_c290.jpg" class="university-logo ls-is-cached lazyloaded">
                                            <div class="info-category">
                                                <p class="univer_name td-text-style">대구보건대학교</p>
                                                <p class="user_name td-text-style">홍길동</p>
                                            </div>
                                            <div class="curriculum-segment">
                                                <p class="curriculum-name"><span class="curriculum-brief-info">교양/3학점/1학년</span><br>컴퓨터의 개념 및 실습</p>
                                                <div class="curriculum-rank">
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark"></span>
                                                    <span class="rank-mark-number recommend-rank-mark-number">4.0</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="area-line"></div>
                                        <div class="uni-info_text_wrap">
                                            <div class="curriculum-review">
                                                <h4 class="good">장점</h4>
                                                <p class="td-text-style">
                                                    의료기사 중에서 유일하게 창업이 가능한 점이 좋음 실력을 쌓아서 자기가 기공소를 차려도 되고 해외취업이나 치과로 취업해도되고 학력을 더 쌓...
                                                </p>
                                            </div>
                                            <div class="curriculum-review">
                                                <h4 class="bad">단점</h4>
                                                <p class="td-text-style">
                                                    너무 계단이 에바임 여름에 쪄죽음. 등록금이 비쌈. 사람들이 우리과에 대해 좋게 생각하는 사람들이 드뭄
                                                </p>
                                            </div>
                                        </div>
                                        <div class="sub-info td-text-style">
                                            <span><i class="far fa-eye"></i><span>46</span></span>
                                            <span><i class="far fa-heart"></i><span>0</span></span>
                                            <span><i class="far fa-comment-dots"></i><span>0</span></span>
                                        </div>
                                        <div></div>
                                    </div>
                                </a>
                            </li>
                            <!-- curriculum content end -->
                            <!-- curriculum content start -->
                            <li>
                                <a href="" style="padding-bottom: 6px">
                                    <div class="curriculum-list_box">
                                        <span class="recommend-label recommend">컴퓨터공학과</span>
                                        <!-- <span class="recommend-label recommend">추천&nbsp;&nbsp;<i class="far fa-thumbs-up"></i></span> -->
                                        <div class="top-curriculum-info">
                                            <img src="https://d1qzykz9iz00c7.cloudfront.net/static/logo/logo_c290.jpg" class="university-logo ls-is-cached lazyloaded">
                                            <div class="info-category">
                                                <p class="univer_name td-text-style">대구보건대학교</p>
                                                <p class="user_name td-text-style">홍길동</p>
                                            </div>
                                            <div class="curriculum-segment">
                                                <p class="curriculum-name"><span class="curriculum-brief-info">교양/3학점/1학년</span><br>컴퓨터의 개념 및 실습</p>
                                                <div class="curriculum-rank">
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark"></span>
                                                    <span class="rank-mark-number recommend-rank-mark-number">4.0</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="area-line"></div>
                                        <div class="uni-info_text_wrap">
                                            <div class="curriculum-review">
                                                <h4 class="good">장점</h4>
                                                <p class="td-text-style">
                                                    의료기사 중에서 유일하게 창업이 가능한 점이 좋음 실력을 쌓아서 자기가 기공소를 차려도 되고 해외취업이나 치과로 취업해도되고 학력을 더 쌓...
                                                </p>
                                            </div>
                                            <div class="curriculum-review">
                                                <h4 class="bad">단점</h4>
                                                <p class="td-text-style">
                                                    너무 계단이 에바임 여름에 쪄죽음. 등록금이 비쌈. 사람들이 우리과에 대해 좋게 생각하는 사람들이 드뭄
                                                </p>
                                            </div>
                                        </div>
                                        <div class="sub-info td-text-style">
                                            <span><i class="far fa-eye"></i><span>46</span></span>
                                            <span><i class="far fa-heart"></i><span>0</span></span>
                                            <span><i class="far fa-comment-dots"></i><span>0</span></span>
                                        </div>
                                        <div></div>
                                    </div>
                                </a>
                            </li>
                            <!-- curriculum content end -->
                            <!-- curriculum content start -->
                            <li>
                                <a href="" style="padding-bottom: 6px">
                                    <div class="curriculum-list_box">
                                        <span class="recommend-label recommend">컴퓨터공학과</span>
                                        <!-- <span class="recommend-label recommend">추천&nbsp;&nbsp;<i class="far fa-thumbs-up"></i></span> -->
                                        <div class="top-curriculum-info">
                                            <img src="https://d1qzykz9iz00c7.cloudfront.net/static/logo/logo_c290.jpg" class="university-logo ls-is-cached lazyloaded">
                                            <div class="info-category">
                                                <p class="univer_name td-text-style">대구보건대학교</p>
                                                <p class="user_name td-text-style">홍길동</p>
                                            </div>
                                            <div class="curriculum-segment">
                                                <p class="curriculum-name"><span class="curriculum-brief-info">교양/3학점/1학년</span><br>컴퓨터의 개념 및 실습</p>
                                                <div class="curriculum-rank">
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark"></span>
                                                    <span class="rank-mark-number recommend-rank-mark-number">4.0</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="area-line"></div>
                                        <div class="uni-info_text_wrap">
                                            <div class="curriculum-review">
                                                <h4 class="good">장점</h4>
                                                <p class="td-text-style">
                                                    의료기사 중에서 유일하게 창업이 가능한 점이 좋음 실력을 쌓아서 자기가 기공소를 차려도 되고 해외취업이나 치과로 취업해도되고 학력을 더 쌓...
                                                </p>
                                            </div>
                                            <div class="curriculum-review">
                                                <h4 class="bad">단점</h4>
                                                <p class="td-text-style">
                                                    너무 계단이 에바임 여름에 쪄죽음. 등록금이 비쌈. 사람들이 우리과에 대해 좋게 생각하는 사람들이 드뭄
                                                </p>
                                            </div>
                                        </div>
                                        <div class="sub-info td-text-style">
                                            <span><i class="far fa-eye"></i><span>46</span></span>
                                            <span><i class="far fa-heart"></i><span>0</span></span>
                                            <span><i class="far fa-comment-dots"></i><span>0</span></span>
                                        </div>
                                        <div></div>
                                    </div>
                                </a>
                            </li>
                            <!-- curriculum content end -->
                            <!-- curriculum content start -->
                            <li>
                                <a href="" style="padding-bottom: 6px">
                                    <div class="curriculum-list_box">
                                        <span class="recommend-label recommend">컴퓨터공학과</span>
                                        <!-- <span class="recommend-label recommend">추천&nbsp;&nbsp;<i class="far fa-thumbs-up"></i></span> -->
                                        <div class="top-curriculum-info">
                                            <img src="https://d1qzykz9iz00c7.cloudfront.net/static/logo/logo_c290.jpg" class="university-logo ls-is-cached lazyloaded">
                                            <div class="info-category">
                                                <p class="univer_name td-text-style">대구보건대학교</p>
                                                <p class="user_name td-text-style">홍길동</p>
                                            </div>
                                            <div class="curriculum-segment">
                                                <p class="curriculum-name"><span class="curriculum-brief-info">교양/3학점/1학년</span><br>컴퓨터의 개념 및 실습</p>
                                                <div class="curriculum-rank">
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark"></span>
                                                    <span class="rank-mark-number recommend-rank-mark-number">4.0</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="area-line"></div>
                                        <div class="uni-info_text_wrap">
                                            <div class="curriculum-review">
                                                <h4 class="good">장점</h4>
                                                <p class="td-text-style">
                                                    의료기사 중에서 유일하게 창업이 가능한 점이 좋음 실력을 쌓아서 자기가 기공소를 차려도 되고 해외취업이나 치과로 취업해도되고 학력을 더 쌓...
                                                </p>
                                            </div>
                                            <div class="curriculum-review">
                                                <h4 class="bad">단점</h4>
                                                <p class="td-text-style">
                                                    너무 계단이 에바임 여름에 쪄죽음. 등록금이 비쌈. 사람들이 우리과에 대해 좋게 생각하는 사람들이 드뭄
                                                </p>
                                            </div>
                                        </div>
                                        <div class="sub-info td-text-style">
                                            <span><i class="far fa-eye"></i><span>46</span></span>
                                            <span><i class="far fa-heart"></i><span>0</span></span>
                                            <span><i class="far fa-comment-dots"></i><span>0</span></span>
                                        </div>
                                        <div></div>
                                    </div>
                                </a>
                            </li>
                            <!-- curriculum content end -->
                            <!-- curriculum content start -->
                            <li>
                                <a href="" style="padding-bottom: 6px">
                                    <div class="curriculum-list_box">
                                        <span class="recommend-label recommend">컴퓨터공학과</span>
                                        <!-- <span class="recommend-label recommend">추천&nbsp;&nbsp;<i class="far fa-thumbs-up"></i></span> -->
                                        <div class="top-curriculum-info">
                                            <img src="https://d1qzykz9iz00c7.cloudfront.net/static/logo/logo_c290.jpg" class="university-logo ls-is-cached lazyloaded">
                                            <div class="info-category">
                                                <p class="univer_name td-text-style">대구보건대학교</p>
                                                <p class="user_name td-text-style">홍길동</p>
                                            </div>
                                            <div class="curriculum-segment">
                                                <p class="curriculum-name"><span class="curriculum-brief-info">교양/3학점/1학년</span><br>컴퓨터의 개념 및 실습</p>
                                                <div class="curriculum-rank">
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark"></span>
                                                    <span class="rank-mark-number recommend-rank-mark-number">4.0</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="area-line"></div>
                                        <div class="uni-info_text_wrap">
                                            <div class="curriculum-review">
                                                <h4 class="good">장점</h4>
                                                <p class="td-text-style">
                                                    의료기사 중에서 유일하게 창업이 가능한 점이 좋음 실력을 쌓아서 자기가 기공소를 차려도 되고 해외취업이나 치과로 취업해도되고 학력을 더 쌓...
                                                </p>
                                            </div>
                                            <div class="curriculum-review">
                                                <h4 class="bad">단점</h4>
                                                <p class="td-text-style">
                                                    너무 계단이 에바임 여름에 쪄죽음. 등록금이 비쌈. 사람들이 우리과에 대해 좋게 생각하는 사람들이 드뭄
                                                </p>
                                            </div>
                                        </div>
                                        <div class="sub-info td-text-style">
                                            <span><i class="far fa-eye"></i><span>46</span></span>
                                            <span><i class="far fa-heart"></i><span>0</span></span>
                                            <span><i class="far fa-comment-dots"></i><span>0</span></span>
                                        </div>
                                        <div></div>
                                    </div>
                                </a>
                            </li>
                            <!-- curriculum content end -->
                            <!-- curriculum content start -->
                            <li>
                                <a href="" style="padding-bottom: 6px">
                                    <div class="curriculum-list_box">
                                        <span class="recommend-label recommend">컴퓨터공학과</span>
                                        <!-- <span class="recommend-label recommend">추천&nbsp;&nbsp;<i class="far fa-thumbs-up"></i></span> -->
                                        <div class="top-curriculum-info">
                                            <img src="https://d1qzykz9iz00c7.cloudfront.net/static/logo/logo_c290.jpg" class="university-logo ls-is-cached lazyloaded">
                                            <div class="info-category">
                                                <p class="univer_name td-text-style">대구보건대학교</p>
                                                <p class="user_name td-text-style">홍길동</p>
                                            </div>
                                            <div class="curriculum-segment">
                                                <p class="curriculum-name"><span class="curriculum-brief-info">교양/3학점/1학년</span><br>컴퓨터의 개념 및 실습</p>
                                                <div class="curriculum-rank">
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark checked"></span>
                                                    <span class="rank-mark"></span>
                                                    <span class="rank-mark-number recommend-rank-mark-number">4.0</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="area-line"></div>
                                        <div class="uni-info_text_wrap">
                                            <div class="curriculum-review">
                                                <h4 class="good">장점</h4>
                                                <p class="td-text-style">
                                                    의료기사 중에서 유일하게 창업이 가능한 점이 좋음 실력을 쌓아서 자기가 기공소를 차려도 되고 해외취업이나 치과로 취업해도되고 학력을 더 쌓...
                                                </p>
                                            </div>
                                            <div class="curriculum-review">
                                                <h4 class="bad">단점</h4>
                                                <p class="td-text-style">
                                                    너무 계단이 에바임 여름에 쪄죽음. 등록금이 비쌈. 사람들이 우리과에 대해 좋게 생각하는 사람들이 드뭄
                                                </p>
                                            </div>
                                        </div>
                                        <div class="sub-info td-text-style">
                                            <span><i class="far fa-eye"></i><span>46</span></span>
                                            <span><i class="far fa-heart"></i><span>0</span></span>
                                            <span><i class="far fa-comment-dots"></i><span>0</span></span>
                                        </div>
                                        <div></div>
                                    </div>
                                </a>
                            </li>
                            <!-- curriculum content end -->
                        </ul>
                    </div>
                </div>
            </section>
        </main>
        <!-- main end -->
        <jsp:include page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
		<jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
    </div>
</body>
<script src="https://kit.fontawesome.com/d25c7e6490.js" crossorigin="anonymous"></script>
</html>