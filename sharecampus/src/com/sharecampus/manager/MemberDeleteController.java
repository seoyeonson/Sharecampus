package com.sharecampus.manager;

import java.io.File;
import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.manager.dao.ManagerMemberDAO;

public class MemberDeleteController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		int memberNum = Integer.valueOf(req.getParameter("memberNum"));
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload";
		ManagerMemberDAO managerMemberDAO = new ManagerMemberDAO();
		
		managerMemberDAO.delete(memberNum);
		result.setRedirect(true);
		result.setPath("/manager/memberList.ma");
		return result;
	}

}
