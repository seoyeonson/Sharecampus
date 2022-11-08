package com.sharecampus.community;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.HashMap;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.community.dao.CommunityDAO;
import com.sharecampus.community.vo.CommunityVO;

public class CommunityAddController extends HttpServlet implements Execute {
// 글 쓰기를 할 때 호출
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		
		Result result = new Result();
		CommunityDAO communityDAO = new CommunityDAO();
		HttpSession session = req.getSession();
		
		String communityContents = req.getParameter("community_content");
		int memberNumber =  (Integer)session.getAttribute("memberNum");
		

		CommunityVO communityVO = new CommunityVO();
		communityVO.setCommunityContents(communityContents);
		communityVO.setMemberNum(memberNumber);
		communityDAO.insert(communityVO);
		
		result.setPath("/community/listDs.co");
		return result;
	}

}