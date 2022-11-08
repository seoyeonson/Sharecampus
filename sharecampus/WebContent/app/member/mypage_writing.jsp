<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <title>마이페이지

    </title>
</head>
<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp" />
<section class="curriculumSection">
	<div>
	    <div class="curriculum_header">
	        <h1>
	            <span class="smTxt" style="font-size: 0.9rem;">LET'S see</span>
	            <span class="bgTxt">마이페이지</span>
	        </h1>
	    </div>
	    <div id="container">
	        <jsp:include page="${pageContext.request.contextPath}/app/member/mypage_menu.jsp" />
	        <main id="content" role="main" class="more2" style="border: none;">
	            <section class="sMypage">
	                <h1 class="sMypageTitle" style="background-color: #3393f4; color: #fff;">나의 활동 - <span style="font-size: 12px">스터디 모아보기</span></h1>
	                <div>
	                    <div class="board_list_wrap">
                            <div style="width:90%; margin: auto; padding-bottom: 10px;">
	                            <h2 style="font-size: 18px; font-weight: bold;">전체 총
	                            	<c:choose>
	                            		<c:when test="${total > 0}">
			                            	<span style="font-size: 15px; font-weight: normal;"><c:out value="${total}"/>건</span>
	                            		</c:when>
	                            		<c:otherwise>
			                            	<span style="font-size: 15px; font-weight: normal;">0건</span>
	                            		</c:otherwise>
	                            	</c:choose>
	                            </h2>
                            </div>
		                    <table class="board_list curriculum" style="width:90%; margin: 0 auto; margin-bottom: 20px" id="study_list">
		                        <thead>
			                        <tr>
			                            <th>번호</th>
			                            <th>제목</th>
			                            <th>작성일</th>
			                        </tr>
		                        </thead>
		                        <tbody>
		                        	<c:choose>
										<c:when test="${not empty studyAll and fn:length(studyAll) > 0}">
											<c:forEach var="study" items="${studyAll}">
												<tr>
													<td><c:out value="${study.getStudyNum()}"/></td>
													<td><a href="${pageContext.request.contextPath}/study/listDs.su?studyNum=${study.getStudyNum()}"><c:out value="${study.getStudyTitle()}"/></a></td>
													<td><c:out value="${study.getStudyRegistDate()}"/></td>
												</tr>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<tr>
												<td colspan="3" align="center">등록된 게시물이 없습니다.</td>
											</tr>
										</c:otherwise>
									</c:choose>
		                        </tbody>
		                    </table>
		                    <!-- 페이징 처리 -->
							<table style="font-size:1.3rem; margin: 0 auto;">
								<tr align="center" valign="middle">
									<td class="web-view" style="border: none; font-size: 16px;">
										<c:if test="${prev}">
											<a href="${pageContext.request.contextPath}/member/selectStudy.me?page=${startPage - 1}">&lt;</a>
										</c:if>
										<c:forEach var="i" begin="${startPage}" end="${endPage}">
											<c:choose>
												<c:when test="${not (i eq page)}">
													<a href="${pageContext.request.contextPath}/member/selectStudy.me?page=${i}">
														<c:out value="${i}"/>&nbsp;&nbsp;
													</a>
												</c:when>
												<c:otherwise>
														<a style="color: var(--main); font-weight: bold;"><c:out value="${i}"/>&nbsp;&nbsp;</a>
												</c:otherwise>
											</c:choose>
										</c:forEach>
										<c:if test="${next}">
											<a href="${pageContext.request.contextPath}/member/selectStudy.me?page=${endPage + 1}">&gt;</a>
										</c:if>
									</td>
								</tr>
							</table>
	                	</div>
	                </div>
	            </section>
	        </main>
	    </div>
	</div>
</section>
<jsp:include
		page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
<jsp:include
	page="${pageContext.request.contextPath}/app/fix/footer.jsp" /> 
</html>