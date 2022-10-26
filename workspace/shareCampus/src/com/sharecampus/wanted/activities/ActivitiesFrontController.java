package com.sharecampus.wanted.activities;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.wanted.Result;

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
		
		if(target.equals("/activities/list.ac")) {
//		대외활동 목록들을 DB에서 가져오는 것
		}else if(target.equals("/activities/listDs.ac")) {
//		대외활동 상세글을 DB에서 조회
		}else if(target.equals("/activities/listDi.ac")) {
//		대외활동 상세글을 DB에 추가
		}else if(target.equals("/activities/listDd.ac")) {
//		대외활동 상세글을 DB에서 삭제
		}else if(target.equals("/activities/listDu.ac")) {
//		대외활동 상세글을 DB에서 수정
		}else if(target.equals("/activities/rlistDs.ac")) {
//		대외활동 댓글을 DB에서 조회
		}else if(target.equals("/activities/rlistDi.ac")) {
//		대외활동 댓글을 DB에서 추가
		}else if(target.equals("/activities/rlistDd.ac")) {
//		대외활동 댓글을 DB에서 삭제
		}else if(target.equals("/activities/rlistDu.ac")) {
//		대외활동 댓글을 DB에서 수정
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
