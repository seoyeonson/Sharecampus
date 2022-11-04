package com.sharecampus.member;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.member.dao.MemberDAO;

public class CheckNicknameController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		
		String memberNickname = req.getParameter("memberNickname");
		MemberDAO memberDAO = new MemberDAO();
		System.out.println("실행됌 : " + memberNickname);
		
		resp.getWriter().print(memberDAO.checkNickname(memberNickname));
		return null;
	}

}
