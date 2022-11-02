package com.sharecampus.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Result;

public class MemberFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = req.getRequestURI().substring(req.getContextPath().length());
		Result result = null;
		
		if(target.equals("/member/auth/kakao/callback.me")) {
//			카카오 로그인 토큰
			result = new KakaoLoginController().execute(req, resp);
			
		} else if(target.equals("/member/auth/kakaoLoginMember.me")){
//			카카오 회원 정보
			result = new KakaoLoginMemberController().execute(req, resp);
			
		} else if(target.equals("/member/checkId.me")) {
//			아이디 체크
			result = new CheckIdController().execute(req, resp);
			
		} else if(target.equals("/member/loginOk.me")) {
//			로그인 성공
			result = new LoginOkController().execute(req, resp);
			
			
		} else if(target.equals("/member/join.me")){
//			회원가입 확인
			result = new Result();
			result.setPath("/app/member/join.jsp");
			
		} else if (target.equals("/member/joinOk.me")){
			result = new JoinOkController().execute(req, resp);
			
		} else if(target.equals("/member/logout.me")) {
//			로그아웃 페이지로 이동
			result = new LogOutController().execute(req, resp);
//			===============================================
		} else if(target.equals("/member/imagechange.me")) {
//			프로필 이미지 변경
		} else if(target.equals("/member/passwordchange.me")) {
//			비밀번호 변경
		} else if(target.equals("/member/emailAdd.me")) {
//			이메일 주소 변경
		} else if(target.equals("/member/connectproof.me")) {
//			인증서 연결
		} else if(target.equals("/member/movelist.me")) {
//			내가 쓴 글 보기로 이동
		} else if(target.equals("/member/movecomments.me")) {
//			내가 쓴 댓글 보기로 이동
		} else if(target.equals("/member/movebookmarks.me")) {
//			내가 모은 책갈피로 이동
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
				
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
			
		}
		
	}
}
