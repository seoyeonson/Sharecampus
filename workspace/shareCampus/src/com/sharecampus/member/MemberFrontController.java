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
	super.doGet(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = req.getRequestURI().substring(req.getContextPath().length());
		Result result = null;
		
		if(target.equals("/member/join.me")) {
//			회원가입 페이지로 이동
		}else if(target.equals("/member/joinOk.me")) {
//			회원가입 페이지에서 회원 가입 DB로 이동
		}else if(target.equals("/member/checkId.me")) {
//			아이디가 있는지 없는지 확인하는 것		
		}else if(target.equals("/member/login.me")) {
//			로그인 페이지로 이동
		}else if(target.equals("/member/loginOk.me")) {
//			로그인 성공 회원의 DB를 갖고오는 것
		}else if(target.equals("/member/logout.me")) {
//			로그아웃 페이지로 이동
		}else if(target.equals("/member/chaimg.me")) {
//			프로필 이미지 변경
		}else if(target.equals("/member/chapw.me")) {
//			비밀번호 변경
		}else if(target.equals("/member/chabir.me")) {
//			생일 변경
		}else if(target.equals("/member/chaima.me")) {
//			이메일 주소 변경
		}
//		else if(target.equals("/member/navcon.me")) {
//			네이버 아이디 연결
//		}else if(target.equals("/member/kaocon.me")) {
//			카카오 아이디 연결
//		}
		else if(target.equals("/member/connect.me")) {
//			인증서 연결
		}else if(target.equals("/member/connect.me")) {
//			내가 쓴 커뮤니티 글 모아보기로 이동
		}else if(target.equals("/member/connect.me")) {
//			내가 쓴 동아리 글 모아보기로 이동
		}else if(target.equals("/member/connect.me")) {
//			내가 쓴 스터디 글 모아보기로 이동
		}else if(target.equals("/member/connect.me")) {
//			내가 쓴 활동 글 보기로 이동
		}else if(target.equals("/member/connect.me")) {
//			내가 모은 책갈피로 이동
		}else if(target.equals("/member/connect.me")) {
//			내가 쓴 커뮤니티 댓글 모아보기로 이동
		}else if(target.equals("/member/connect.me")) {
//			내가 쓴 동아리 댓글 모아보기로 이동
		}else if(target.equals("/member/connect.me")) {
//			내가 쓴 활동 댓글 모아보기로 이동
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
