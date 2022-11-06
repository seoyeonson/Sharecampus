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

public class CommunityUpdateController extends HttpServlet implements Execute {
// 수정화면을 보여줄때 호출
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		int communityNum = Integer.valueOf(req.getParameter("communityNum"));
		CommunityDAO communityDAO = new CommunityDAO();
		req.setAttribute("community", communityDAO.select(communityNum));

		result.setPath("/app/community/communityupdate.jsp");
		return result;
	}

}
