package com.sharecampus.study;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.member.dao.MemberDAO;

public class StudyDetailInsertController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		String memberId = "";
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		try {
			memberId = (String) req.getSession().getAttribute("memberId");
			req.setAttribute("memberNum", memberDAO.selectMemberNum(memberId));
			result.setPath("/app/study/studyWrite.jsp");
			
		} catch (Exception e) {
			result.setPath("/app/main.mn");
		}
		return result;
	}

}
