package com.wanted.sharecampus.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class MypageFrontController {
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = req.getRequestURI().substring(req.getContextPath().length());
		Result result = null;
		
		if(target.equals("/member/mypage.me")) {
			result = new Result();
			result.setPath("/app/member/mypage.jsp");
			
		}else if(target.equals("/member/changemail.me")) {
			
		}else if(target.equals("/member/changepassword.me")) {
			
		}else if(target.equals("/member/connectnaver.me")) {
			
		}else if(target.equals("/member/connectkakao.me")) {
			
		}else if(target.equals("/member/connect.me")) {
			
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
