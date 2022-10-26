package com.shareCampus.wanted.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shareCampus.wanted.Result;

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
