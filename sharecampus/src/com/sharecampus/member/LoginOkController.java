package com.sharecampus.member;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.member.dao.MemberDAO;

public class LoginOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		System.out.println("loginOk 들어옴");
		Result result = new Result();
		HttpSession session = req.getSession();
		
		MemberDAO memberDAO = new MemberDAO();
		
		int memberNum = 0;
		memberNum = memberDAO.selectMemberNum(String.valueOf(session.getAttribute("member_id")));
		session.setAttribute("memberNum", memberNum);
		
		result.setPath("/");
		return result;
	}


}
