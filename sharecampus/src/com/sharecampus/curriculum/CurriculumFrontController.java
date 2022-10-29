package com.sharecampus.curriculum;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Result;

public class CurriculumFrontController extends HttpServlet{
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
		
		if(target.equals("/curriculum/list.cu")) {
//		커리큘럼 목록들을 DB에서 가져오는 것
		}else if(target.equals("/curriculum/listDs.cu")) {
//		커리큘럼 상세글을 DB에서 가져오기
		}else if(target.equals("/curriculum/listDi.cu")) {
//		커리큘럼 상세글을 DB에서 추가
		}else if(target.equals("/curriculum/listDd.cu")) {
//		커리큘럼 상세글을 DB에서 삭제
		}else if(target.equals("/curriculum/listDu.cu")) {
//		커리큘럼 상세글을 DB에서 수정
		}else if(target.equals("/curriculum/rlistDs.cu")) {
//		커리큘럼 댓글을 DB에서 조회
		}else if(target.equals("/curriculum/rlistDi.cu")) {
//		커리큘럼 댓글을 DB에서 추가
		}else if(target.equals("/curriculum/rlistDd.cu")) {
//		커리큘럼 댓글을 DB에서 삭제
		}else if(target.equals("/curriculum/rlistDu.cu")) {
//		커리큘럼 댓글을 DB에서 수정
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
