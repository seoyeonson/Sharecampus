package com.sharecampus.study;

import java.io.IOException;
import java.rmi.ServerException;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.study.dao.StudyDAO;
import com.sharecampus.study.vo.StudyDTO;

public class StudyDetailSelectController implements Execute {

	@Override
	public Result execute(javax.servlet.http.HttpServletRequest req, javax.servlet.http.HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		
		
		int	studyNum = Integer.valueOf(req.getParameter("studyNum"));
	
		StudyDAO studyDAO = new StudyDAO();
		StudyDTO studyDTO = studyDAO.select(studyNum);
		req.setAttribute("study", studyDTO);
		
		result.setPath("/app/study/studyBoard.jsp");
		return result;
		
	
	}

}
