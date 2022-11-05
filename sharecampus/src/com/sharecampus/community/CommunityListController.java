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

public class CommunityListController extends HttpServlet implements Execute {
// 전체 글목록을 호출할때 사용
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		CommunityDAO communityDAO = new CommunityDAO();
		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		Result result = new Result();
		
		req.setAttribute("communitys", communityDAO.selectAll(pageMap));
		
		result.setPath("/app/community/community.jsp");
		return result;
		
		

	}

}