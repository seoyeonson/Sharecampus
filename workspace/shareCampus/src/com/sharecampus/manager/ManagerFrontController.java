package com.sharecampus.manager;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Result;

public class ManagerFrontController extends HttpServlet{
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
		
		if(target.equals("/manager/glistin.ma")) {
//		문의글 DB가져오기
		}else if(target.equals("/manager/glistDu.ma")) {
//		문의글 이메일 보내기 API
		}else if(target.equals("/manager/gActivitiesManager.ma")) {
//		대외활동 공고글 관리 DB
		}else if(target.equals("/manager/gActivitiesJoin.ma")) {
//		대외활동 공고글 가져오기 DB
		}else if(target.equals("/manager/gReportManager.ma")) {
//		신고글 관리 DB
		}else if(target.equals("/manager/gReportJoin.ma")) {
//		신고글 가져오기 DB
		}else if(target.equals("/manager/gMemberlistManager.ma")) {
//		회원 인증 관리 DB
		}else if(target.equals("/manager/gMemberlistJoin.ma")) {
//		회원 인증 가져오기 DB
		}else if(target.equals("/manager/gMemberlistManager.ma")) {
//		회원 목록 관리 DB
		}else if(target.equals("/manager/gMemberlistJoin.ma")) {
//		회원 목록 가져오기 DB
		}else if(target.equals("/manager/gChanBanner.ma")) {
//		배너수정 가져오기 DB		
		}
			
			if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
				
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
			
		

			}}}