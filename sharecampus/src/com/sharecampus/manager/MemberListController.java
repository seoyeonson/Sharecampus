package com.sharecampus.manager;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.manager.dao.ManagerMemberDAO;
import com.sharecampus.member.dao.MemberDAO;

public class MemberListController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		MemberDAO memberDAO = new MemberDAO();
		ManagerMemberDAO managerMemberDAO = new ManagerMemberDAO();
		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		
		Result result = new Result();
		String temp = req.getParameter(null);
		
		req.setAttribute("members", managerMemberDAO.selectAll(pageMap));
		
		result.setPath("/app/manager/manager_memberAll.jsp");
		
		return result;
	}

	
}
