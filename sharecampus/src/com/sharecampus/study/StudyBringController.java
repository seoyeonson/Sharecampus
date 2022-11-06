package com.sharecampus.study;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.study.dao.StudyDAO;
import com.sharecampus.study.vo.StudyVO;

public class StudyBringController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		StudyDAO studyDAO = new StudyDAO();
		StudyVO studyVO = new StudyVO();
		Result result = new Result();
		
//		studyVO.setStudyTitle(req.getParameter("studyTitle"));
//		studyVO.setStudyIntro(req.getParameter("studyIntro"));
//		studyVO.setStudyArea(req.getParameter("studyArea"));
//		studyVO.setStudyDepart(req.getParameter("studyDepart"));
//		try {
//			studyVO.setStudyNum(Integer.valueOf(req.getParameter("studyNum")));
//			studyVO.setMemberNum(Integer.valueOf(req.getParameter("memberNum")));
//		} catch (NumberFormatException e) {
//			e.printStackTrace();
//		}
//		
//		studyDAO.insert(studyVO);
		
		String temp = req.getParameter("page");
		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 12;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 10;
		int startRow = (page - 1) * rowCount;
		
		int total = studyDAO.getTotal();
		
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)pageCount);
		
		boolean prev = startPage > 1; 
		endPage = endPage > realEndPage ? realEndPage : endPage;
		boolean next = endPage != realEndPage;
		
		pageMap.put("rowCount", rowCount);
		pageMap.put("startRow", startRow);
		
		req.setAttribute("studies", studyDAO.selectAll(pageMap));
		req.setAttribute("total", total);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		
		
		result.setPath("/app/study/studyMain.jsp");
		return result;
	}

}
