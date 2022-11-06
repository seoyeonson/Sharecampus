package com.sharecampus.member;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sharecampus.Execute;
import com.sharecampus.Result;

public class GoogleLoginMemberController extends Result implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		Result result = new Result();
		

		String member_id = req.getParameter("email");
		String member_nickname = req.getParameter("userName");
		
		System.out.println("member_id: " + member_id);
		System.out.println("member_nickname: " + member_nickname);
		
		session.setAttribute("member_id", member_id);
	    session.setAttribute("member_nickname", member_nickname);
	    session.setAttribute("member_type", 2);

		return null;
	}

}
