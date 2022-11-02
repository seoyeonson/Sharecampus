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
		
		if(target.equals("/manager/ActivitiesManager.ma")) {
//		대외활동 공고글 승인하기
		}else if(target.equals("/manager/ActivitiesJoin.ma")) {
//		대외활동 공고글 삭제하기
		}else if(target.equals("/manager/ActivitiesJoin.ma")) {
//		대외활동 공고글 가져오기 DB
		}else if(target.equals("/manager/ReportManager.ma")) {
//		회원 인증 승인 DB
		}else if(target.equals("/manager/ReportManager.ma")) {
//		회원 인증 삭제 DB
		}else if(target.equals("/manager/MemberlistJoin.ma")) {
//		회원 인증 가져오기 DB
		}else if(target.equals("/manager/MemberlistManager.ma")) {
//		회원 목록 추방 DB
		}else if(target.equals("/manager/MemberlistJoin.ma")) {
//		회원 목록 가져오기 DB
		}else if(target.equals("/manager/ChanBanner.ma")) {
//		배너수정 가져오기 DB		
		}else if(target.equals("/manager/ChanBanner.ma")) {
//		배너수정 추가하기 DB		
		}else if(target.equals("/manager/ChanBanner.ma")) {
//		배너수정 삭제하기 DB		
		}
			if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
				
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
			
		

			}}}