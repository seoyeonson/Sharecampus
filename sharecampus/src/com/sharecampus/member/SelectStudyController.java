package com.sharecampus.member;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.activities.dao.ActivitiesDAO;
import com.sharecampus.member.dao.MemberDAO;

public class SelectStudyController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		System.out.println("SelectStudyController");
		Result result = new Result();
		HttpSession session = req.getSession();
		
		try {
			int memberNum = (Integer)session.getAttribute("memberNum");
			String temp = req.getParameter("page");
			
			System.out.println(temp);
			HashMap<String, Integer> pageMap = new HashMap<String, Integer>();

			int page = temp == null ? 1 : Integer.parseInt(temp);
			System.out.println(page);
			
//			한 페이지에 출력되는 게시글의 개수
			int rowCount = 10;
//			한 페이지에서 나오는 페이지 버튼의 개수
			int pageCount = 10;
			int startRow = (page - 1) * rowCount;
			
			MemberDAO memberDAO = new MemberDAO();
			int total = memberDAO.getStudyTotal(memberNum);
			
			int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
			int startPage = endPage - (pageCount - 1);
			int realEndPage = (int)Math.ceil(total / (double)pageCount);
			
			boolean prev = startPage > 1; 
			endPage = endPage > realEndPage ? realEndPage : endPage;
			boolean next = endPage != realEndPage;
			
			pageMap.put("rowCount", rowCount);
			pageMap.put("startRow", startRow);
			pageMap.put("memberNum", memberNum);
			
			req.setAttribute("studyAll", memberDAO.selectStudy(pageMap));
			req.setAttribute("total", total);
			req.setAttribute("page", page);
			req.setAttribute("startPage", startPage);
			req.setAttribute("endPage", endPage);
			req.setAttribute("prev", prev);
			req.setAttribute("next", next);
			result.setPath("/app/member/mypage_writing.jsp");
		} catch (Exception e) {
			req.setAttribute("loginOK", "false");
			result.setPath("/");
		}
		
		return result;
	}

}
