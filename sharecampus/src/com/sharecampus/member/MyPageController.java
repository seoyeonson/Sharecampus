package com.sharecampus.member;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.member.dao.MemberDAO;

public class MyPageController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		HttpSession session = req.getSession();
		MemberDAO memberDAO = new MemberDAO();
		
		try {
			req.setAttribute("memberInfo", memberDAO.memberInfo((Integer)session.getAttribute("memberNum")));
			result.setPath("/app/member/mypage_main.jsp");
		} catch (Exception e){
			req.setAttribute("loginOK", "false");
			result.setPath("/");
		}
		
		return result;
	}

}
