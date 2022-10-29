<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커리큘럼 디테일</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="${pageContext.request.contextPath}/assets/css/curriculum_detail.css" rel="stylesheet">
</head>
<body>
	<div>
		<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp" />
		<!-- main start -->
		<main>
            <section class="curriculumDetailSection">
                <div class="curriculum_top">
                    <div>
                        <div class="curriculumDetailHeader">
                            <h2>컴퓨터의 개념 및 실습</h2>
                        </div>
                        <div>
                            <ul class="class_detail_top">
                                <li>교과목 구분 <span class="class_division">교양</span></li>
                                <li>이수학점<span class="class_credit">3</span></li>
                                <li>이수학년<span class="class_grade">1</span></li>
                                <li>교수명<span class="class_prof">홍길동</span></li>
                            </ul>
                        </div>
                        <div class="All_ratings">
                            <ul>
                                <li>
                                    <h3>수업만족도</h3>
                                    <span class="rank-mark checked"></span>
                                    <span class="rank-mark checked"></span>
                                    <span class="rank-mark checked"></span>
                                    <span class="rank-mark checked"></span>
                                    <span class="rank-mark"></span>
                                </li>
                                <li>
                                    <h3>시험난이도</h3>
                                    <span class="rank-mark checked"></span>
                                    <span class="rank-mark checked"></span>
                                    <span class="rank-mark checked"></span>
                                    <span class="rank-mark checked"></span>
                                    <span class="rank-mark"></span>
                                </li>
                                <li>
                                    <h3>과제난이도</h3>
                                    <span class="rank-mark checked"></span>
                                    <span class="rank-mark checked"></span>
                                    <span class="rank-mark checked"></span>
                                    <span class="rank-mark checked"></span>
                                    <span class="rank-mark"></span>
                                </li>
                                <li>
                                    <h3>교수만족도</h3>
                                    <span class="rank-mark checked"></span>
                                    <span class="rank-mark checked"></span>
                                    <span class="rank-mark checked"></span>
                                    <span class="rank-mark checked"></span>
                                    <span class="rank-mark"></span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
				<!-- <hr> -->
				<div>
                    <div class="curri_main_contents">
                        <p>교수님이 정말 친절하시고 학생들 편으도 많이 봐주십니다.</p>
						<p>일찍 끝내주시고 목소리가 나긋나긋하셔서 살짝 졸리지만 설명도 잘 해주십니다.</p>
						<p>비대면일때는 온라인 강의 올려주시고 줌 수업도 하시는데 줌 수업은 출결 반영 안하니까</p>
						<p>들어오기 슾은 사람만 들어오라고 하십니다.</p>
						<p>근데 전 한번도 안빠지고 들어갔어요. 줌 수업에서 중요한 포인트 같은거 알려주시기 때문에</p>
						<p>학점 잘 받고싶으면 듣는게 좋을거에요!</p>
						<p>제가 물리는 처음이라 중간고사 50점, 기말고사는 한문제밖에 못풀었는데도 B+ 받았습니다.</p>
						<p>과제는 전혀 없으세용 개인적으로 만족하면서 수업들었습니다!</p>
                        <br>
                        <p>교수님이 정말 친절하시고 학생들 편으도 많이 봐주십니다.</p>
						<p>일찍 끝내주시고 목소리가 나긋나긋하셔서 살짝 졸리지만 설명도 잘 해주십니다.</p>
						<p>비대면일때는 온라인 강의 올려주시고 줌 수업도 하시는데 줌 수업은 출결 반영 안하니까</p>
						<p>들어오기 슾은 사람만 들어오라고 하십니다.</p>
						<p>근데 전 한번도 안빠지고 들어갔어요. 줌 수업에서 중요한 포인트 같은거 알려주시기 때문에</p>
						<p>학점 잘 받고싶으면 듣는게 좋을거에요!</p>
						<p>제가 물리는 처음이라 중간고사 50점, 기말고사는 한문제밖에 못풀었는데도 B+ 받았습니다.</p>
						<p>과제는 전혀 없으세용 개인적으로 만족하면서 수업들었습니다!</p>
                        <br>
                        <img src="https://yslib.sen.go.kr/data/flexer//board/997/976101//201804271550_DUcHyLd.pdf.files//00001.png">
                        <p>교수님이 정말 친절하시고 학생들 편으도 많이 봐주십니다.</p>
						<p>일찍 끝내주시고 목소리가 나긋나긋하셔서 살짝 졸리지만 설명도 잘 해주십니다.</p>
						<p>비대면일때는 온라인 강의 올려주시고 줌 수업도 하시는데 줌 수업은 출결 반영 안하니까</p>
						<p>들어오기 슾은 사람만 들어오라고 하십니다.</p>
						<p>근데 전 한번도 안빠지고 들어갔어요. 줌 수업에서 중요한 포인트 같은거 알려주시기 때문에</p>
						<p>학점 잘 받고싶으면 듣는게 좋을거에요!</p>
						<p>제가 물리는 처음이라 중간고사 50점, 기말고사는 한문제밖에 못풀었는데도 B+ 받았습니다.</p>
						<p>과제는 전혀 없으세용 개인적으로 만족하면서 수업들었습니다!</p>
					</div>
				</div>
                <!-- <div class="crri_info">
                    <img src="https://d1qzykz9iz00c7.cloudfront.net/static/logo/logo_c290.jpg" class="university-logo ls-is-cached lazyloaded">
                    <div class="info-category">
                        <p class="univer_name td-text-style">대구보건대학교</p>
                        <p class="user_name td-text-style">홍길동</p>
                    </div>
                </div> -->
                <div class="curri_reply_area">
                    <div>
                        
                    </div>
                    <form>
                        <textarea class="textarea" cols="30" rows="1" maxwidth="600" placeholder="댓글을 등록하세요."></textarea>
                        <button class="curri_reply_apply">등록</button>
                    </form>
                </div>
            </section>
        </main>
		<!-- main end -->
		<jsp:include page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
		<jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="https://kit.fontawesome.com/d25c7e6490.js" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/assets/js/modal.js"></script>
</html>