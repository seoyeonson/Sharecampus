package com.sharecampus.study;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Result;

public class StudyFrontController extends HttpServlet{
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
		
		if(target.equals("/study/list.su")) {
//		스터디 목록들을 DB에서 가져오는 것
		}else if(target.equals("/study/listDs.su")) {
//		스터디 상세글을 DB에서 조회
		}else if(target.equals("/study/listDi.su")) {
//		스터디 상세글을 DB에 추가
		}else if(target.equals("/study/listDd.su")) {
//		스터디 상세글을 DB에서 삭제
		}else if(target.equals("/study/listDu.su")) {
//		스터디 상세글을 DB에서 수정
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
