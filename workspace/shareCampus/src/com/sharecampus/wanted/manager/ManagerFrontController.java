package com.sharecampus.wanted.manager;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.wanted.Result;

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
		}else if(target.equals("/manager/listDu.ma")) {
//		문의글 이메일 보내기
		}else if(target.equals("/manager/gPostAllow.ma")) {
//		공고글 승인 
		}else if(target.equals("/manager/gPostNotAllow.ma")) {
//		공고글 거절 
		}else if(target.equals("/manager/gReportAllow.ma")) {
//		신고글 승인 
		}else if(target.equals("/manager/gReportNotAllow.ma")) {
//		신고글 거절 
		}else if(target.equals("/manager/gCerManagerment.ma")) {
//		회원 인증 관리
		}else if(target.equals("/manager/gCerManagerment.ma")) {
//		회원 목록 관리
		}else if(target.equals("/manager/gChanBanner.ma")) {
//		배너수정			
		}
			
			if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
				
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
			
		

			}}}