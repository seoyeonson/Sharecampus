package com.sharecampus.wanted.community;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.wanted.Result;

public class CommunityFrontController extends HttpServlet{
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
		
		if(target.equals("/community/list.co")) {
//		커뮤니티 목록들을 DB에서 가져오는 것
		}else if(target.equals("/community/listDs.co")) {
//		커뮤니티 상세글을 DB에서 조회
		}else if(target.equals("/community/listDi.co")) {
//		커뮤니티 상세글을 DB에 추가
		}else if(target.equals("/community/listDd.co")) {
//		커뮤니티 상세글을 DB에서 삭제
		}else if(target.equals("/community/listDu.co")) {
//		커뮤니티 상세글을 DB에서 수정
		}else if(target.equals("/community/rlistDs.co")) {
//		커뮤니티 댓글을 DB에서 조회
		}else if(target.equals("/community/rlistDi.co")) {
//		커뮤니티 댓글을 DB에서 추가
		}else if(target.equals("/community/rlistDd.co")) {
//		커뮤니티 댓글을 DB에서 삭제
		}else if(target.equals("/community/rlistDu.co")) {
//		커뮤니티 댓글을 DB에서 수정
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
