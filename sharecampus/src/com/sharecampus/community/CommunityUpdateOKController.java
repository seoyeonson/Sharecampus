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
import com.sharecampus.community.vo.CommunityVO;

public class CommunityUpdateOKController extends HttpServlet implements Execute {
// 수정화면을 보여줄때 호출
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		Result result = new Result();
		CommunityVO communityVO = new CommunityVO();
		CommunityDAO communityDAO = new CommunityDAO();
		int communityNum = Integer.valueOf(req.getParameter("communityNum"));
		String communityContent = (String)req.getAttribute("communityContent");
		
		communityVO.setCommunityNum(communityNum);
		communityVO.setCommunityContents(communityContent);
		
		communityDAO.update(communityVO);
		
		communityDAO.delete(communityNum);
		
		communityDAO.insert(communityVO);
		
		
		result.setPath("/community/listDs.co");
		return result;
	}

}
