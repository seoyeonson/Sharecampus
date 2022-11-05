<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대외활동 상세내용</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/activity/activity_info.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/activity/activity.css">
</head>
<body>
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/header.jsp" />
	<div class="MuiContainer-root jss35 jss1 MuiContainer-maxWidthLg">
		<div>
			<div class="jss3">
				<div class="jss4 jss5">
					<div>
						<div class="jss256">
							<div class="jss258"><c:out value="${activity.getActivTitle()}"/></div>
						</div>
						<div class="jss112">
							<div class="jss113 jss114">
								<div class="jss116">
									<div class="jss118">
										<figure class="jss119">
											<!-- Image Zoom HTML -->
											<img class="thumbnail"
												src="${pageContext.request.contextPath}/upload/${activity.getActivThumbnailImgName()}">
											<!-- The Modal -->
											<div id="myModal" class="big-modal">
												<img class="big-modal-content" id="img01">
												<div id="caption"></div>
											</div>
										</figure>
									</div>
								</div>
							</div>
							<div class="jss113">
								<div class="MuiBox-root jss126 jss115"><c:out value="${activity.getActivField()}"/></div>
								<div class="jss127">
									<div class="jss132">
										<div class="jss133 jss134">접수기간</div>
										<div class="jss135"><c:out value="${activity.getActivStartDate()}"/></div>
									</div>
									<div class="jss132">
										<div class="jss133 jss134">활동기간</div>
										<div class="jss135"><c:out value="${activity.getActivActivingDate()}"/></div>
									</div>
									<div class="jss132">
										<div class="jss133 jss134">모집인원</div>
										<div class="jss135"><c:out value="${activity.getActivPeople()}"/></div>
									</div>
									<div class="jss132">
										<div class="jss133 jss134">활동지역</div>
										<div class="jss135">
											<div class="jss136"><c:out value="${activity.getActivArea()}"/></div>
										</div>
									</div>
									<div class="jss132 jss142">
										<div class="jss133 jss134">관심분야</div>
										<div class="jss135">
											<div class="jss143">
												<span class="jss144"><c:out value="${activity.getActivDept()}"/></span>
											</div>
										</div>
									</div>
									<div class="jss132">
										<div class="jss133 jss134">홈페이지</div>
										<div class="jss135 jss141">
											<div class="jss137">
												<div class="jss139">
													<a href="https://www.itwillbs.co.kr" target="_blank"
														rel="noopener noreferrer" class="jss138"><c:out value="${activity.getActivUrl()}"/></a>
													<svg class="MuiSvgIcon-root jss140" focusable="false"
														viewBox="0 0 24 24" aria-hidden="true">
                            <path
															d="M19 19H5V5h7V3H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2v-7h-2v7zM14 3v2h3.59l-9.83 9.83 1.41 1.41L19 6.41V10h2V3h-7z">
                            </path>
                          </svg>
												</div>
											</div>
										</div>
									</div>
								</div>
								
							</div>
						</div>
					</div>
					<hr>
					<div>
						<div class="">
							<div class="jss191">
								<div class="jss192">상세내용</div>
								<div>
									<p class="block">
										<span><img
											src="${pageContext.request.contextPath}/upload/${activity.getActivMainImgName()}"></span>
									</p>
									<p class = "block">
									<c:out value="${activity.getActivContents()}"/>
									</p>
								</div>
							</div>
						</div>
						<div class="jss193">
							<div class="jss194">
								<div class="jss198">
									<div class="jss199">
										<i class="jss200"></i>
										<div class="jss201">담당자 정보</div>
									</div>
									<div class="field is-horizontal">
										<div class="jss204 field-label">
											<label class="label">담당자</label>
										</div>
										<div class="field-body"><c:out value="${activity.getActivManagerName()}"/></div>
									</div>
									<div class="field is-horizontal">
										<div class="jss204 field-label">
											<label class="label">연락처</label>
										</div>
										<div class="field-body"><c:out value="${activity.getActivManagerPhonenum()}"/></div>
									</div>
									<div class="field is-horizontal">
										<div class="jss204 field-label">
											<label class="label">이메일</label>
										</div>
										<div class="field-body"><c:out value="${activity.getActivManagerEmail()}"/></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/activity/activity_info.js"></script>
</html>