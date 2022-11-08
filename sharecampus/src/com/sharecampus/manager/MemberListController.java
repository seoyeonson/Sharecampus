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

public class MemberListController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		MemberDAO memberDAO = new MemberDAO();
		ManagerMemberDAO managerMemberDAO = new ManagerMemberDAO();
		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		String temp = req.getParameter("page");

		int page = temp == null ? 1 : Integer.parseInt(temp);
		// System.out.println(page);

//	      한 페이지에 출력되는 게시글의 개수
		int rowCount = 12;
//	      한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 10;
		int startRow = (page - 1) * rowCount;

		int total = managerMemberDAO.getTotal();

		int endPage = (int) (Math.ceil(page / (double) pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int) Math.ceil(total / (double) pageCount);

		boolean prev = startPage > 1;
		endPage = endPage > realEndPage ? realEndPage : endPage;
		boolean next = endPage != realEndPage;

		pageMap.put("rowCount", rowCount);
		pageMap.put("startRow", startRow);
//	      페이지 끝

		Result result = new Result();

		req.setAttribute("memberAll", managerMemberDAO.selectAll(pageMap));

		result.setPath("/app/manager/manager_memberAll.jsp");

		return result;
	}

}
