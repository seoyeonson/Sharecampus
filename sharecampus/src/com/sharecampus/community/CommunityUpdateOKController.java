package com.sharecampus.community;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.community.dao.CommunityDAO;
import com.sharecampus.community.vo.CommunityVO;

public class CommunityUpdateOKController extends HttpServlet implements Execute {
// 수정화면을 보여줄때 호출
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		Result result = new Result();
		CommunityDAO communityDAO = new CommunityDAO();
		CommunityVO communityVO = new CommunityVO();
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 5; 
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		String communityContent = multipartRequest.getParameter("communityContents");
		int communityNum = Integer.valueOf(multipartRequest.getParameter("communityNum"));
		int memberNum = (Integer)req.getSession().getAttribute("memberNum");
		System.out.println(memberNum);
		communityVO.setCommunityNum(communityNum);
		communityVO.setCommunityContents(communityContent);
		communityVO.setMemberNum(memberNum);
		communityDAO.update(communityVO);
		communityDAO.delete(communityNum);
		communityDAO.insert(communityVO);
		
		result.setPath("/community/listDs.co");
		return result;
	}

}
