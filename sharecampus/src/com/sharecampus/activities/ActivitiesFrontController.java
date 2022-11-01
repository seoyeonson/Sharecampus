package com.sharecampus.activities;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Result;

public class ActivitiesFrontController extends HttpServlet{
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
		
		
		if(target.equals("/list.ac")) {
//		대외활동 목록들을 DB에서 가져오는 것
			result = new Result();
			result.setPath("/app/activity/activity.jsp");
			
			
		}else if(target.equals("/activities/listDs.ac")) {
//		대외활동 상세글을 DB에서 조회
			
		}else if(target.equals("/activities/listDi.ac")) {
//		대외활동 상세글을 DB에 추가
			result = new ActivitiesInsertController().execute(req, resp);
			
		}else if(target.equals("/activities/listDd.ac")) {
//		대외활동 상세글을 DB에서 삭제 -> 관리자페이지에서 삭제해야할 기능.
			// 모든 유저들이 보는 게시판을 개인이 삭제할 수가 없음
			
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
