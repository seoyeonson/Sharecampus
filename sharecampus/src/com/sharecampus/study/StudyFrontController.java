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
		doProcess(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = req.getRequestURI().substring(req.getContextPath().length());
		Result result = null;
		System.out.println(target);
		if(target.equals("/study/list.su")) {
//		스터디 목록들을 DB에서 조회
			result = new Result();
			result.setPath("/app/study/studyWrite.jsp");
		}else if(target.equals("/study/write.su")) {
			System.out.println("나 들어왔어~!");
//			스터디 목록들을 DB에서 조회
			result = new Result();
			result.setPath("/app/study/studyWrite.jsp");
		}else if(target.equals("/study/listDs.su")) {
//		스터디 상세글을 DB에서 조회
			result = new StudyDetailSelectController().execute(req, resp);
		}else if(target.equals("/study/listDi.su")) {
			System.out.println("들어옴");
//		스터디 상세글을 DB에 추가 
			result = new StudyDeatilInsertOkController().execute(req, resp);
		}else if(target.equals("/study/studyDetailInsertOk.su")) {
			result = new StudyDetailInsertController().execute(req, resp);
		}else if(target.equals("/study/listDd.su")) {
//		스터디 상세글을 DB에서 삭제
			result = new StudyDetailDeleteController().execute(req, resp);
		}else if(target.equals("/study/listDu.su")) {
//		스터디 상세글을 DB에서 수정
			result = new StudyDetailUpdateController().execute(req, resp);
		}else {
			System.out.println("else 들어옴");
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
