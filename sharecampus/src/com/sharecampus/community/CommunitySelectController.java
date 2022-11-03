package com.sharecampus.community;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.HashMap;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.community.dao.CommunityDAO;
import com.sharecampus.community.vo.CommunityDTO;

public class CommunitySelectController extends HttpServlet implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		CommunityDAO communityDAO = new CommunityDAO();
		Result result = new Result();
		String temp = req.getParameter("page");
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		
		req.setAttribute("communitys", communityDAO.selectAll());
		
		result.setPath("/app/community/community.jsp");
		return result;
	}

}
