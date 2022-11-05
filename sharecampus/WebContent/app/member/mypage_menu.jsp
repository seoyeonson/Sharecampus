<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="asideWrap" class="active">
    <div class="sideNav -first">
        <ul>
            <li class="first_Nav" style="background-color: #3393f4;">
                 <a href="${pageContext.request.contextPath}/member/mypageOk.me">
                <span style="color: #fff;">내 정보</span>
                </a>
            </li> 
            <li>
                <a href="${pageContext.request.contextPath}/member/mypageOk.me">
                <span>회원 정보 변경</span>
                </a>
            </li>
        </ul>
          <!-- 왼쪽 첫번째 배너 끝-->
    </div> 
    <div class="sideNav -second">
            <!-- 왼쪽 두번째 배너 시작-->
        <ul>
            <li class="first_Nav" style="background-color: #3393f4;">
                 <a href="">
                <span style="color: #fff;">나의 활동</span>
                </a>
            </li> 
            <li>
                 <a href="${pageContext.request.contextPath}/app/member/mypage_writing.jsp">
                <span>내가 쓴 글 모아보기</span>
                </a>
            </li> 
            <li>
                 <a href="${pageContext.request.contextPath}/app/member/mypage_comment.jsp">
                <span>내가 쓴 댓글 모아보기</span>
                </a>
            </li>
            <li>
                 <a href="${pageContext.request.contextPath}/app/member/mypage_bookmark.jsp">
                 <span>내가 모은 북마크 모아보기</span>
                </a>
            </li>
        </ul>
    </div>
</div>