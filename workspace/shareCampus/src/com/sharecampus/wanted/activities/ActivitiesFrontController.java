package com.shareCampus.wanted.activities;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shareCampus.wanted.Result;

public class ActivitiesFrontController extends HttpServlet{
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
//		대외활동 글들을 DB에서 가져오는 것
		}else if(target.equals("/member/joinOk.me")) {
//		해당 DB의 num을 참고해 상세보기 페이지로 이동하는 것
		}else if(target.equals("/member/checkId.me")) {
//		대외활동 글을 DB에 추가하는 것
		}else if(target.equals("/member/login.me")) {
//		대외활동 글을 DB에서 삭제하는 것
		}else if(target.equals("/member/loginOk.me")) {
//		대외활동 글에 댓글을 다는 것
		}else if(target.equals("/member/logout.me")) {
		
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
