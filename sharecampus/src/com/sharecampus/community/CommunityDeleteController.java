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

public class CommunityDeleteController extends HttpServlet implements Execute {
// 글 삭제할 때 호출
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		int communityNum = Integer.valueOf(req.getParameter("communityNum"));
		System.out.println("들어옴"+communityNum);
		CommunityDAO communityDAO = new CommunityDAO();
		communityDAO.delete(communityNum);
		result.setRedirect(true);
		result.setPath("/community/listDs.co");
		return result;
	}

}
