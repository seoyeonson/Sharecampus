package com.sharecampus.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Result;

public class MainFrontController extends HttpServlet {
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
		
		if(target.equals("/main/listStselOK.ma")) {
//		스터디 정보를 DB에서 가져온다.
		}else if(target.equals("/main/listStsel.ma")) {
//		스터디 페이지로 이동한다..
		}else if(target.equals("/main/listCoselOK.ma")) {
//		커뮤니티 정보를 DB에서 가져온다.
		}else if(target.equals("/main/listCosel.ma")) {
//		커뮤니티 페이지로 이동한다..
		}else if(target.equals("/main/listCuselOK.ma")) {
//		커리큘럼 정보를 DB에서 가져온다.
		}else if(target.equals("/main/listCusel.ma")) {
//		커리큘럼 정보를 이동한다..
		}else if(target.equals("/main/listAcselOK.ma")) {
//		대외활동 정보를 DB에서 가져온다.
		}else if(target.equals("/main/listACsel.ma")) {
//		대외활동 정보를 가져온다.
		}else if(target.equals("/main/listBannerselOK.ma")) {
//		배너 정보를 가져온다.
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
