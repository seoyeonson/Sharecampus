package com.sharecampus.study;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.study.dao.StudyDAO;

public class StudyDetailUpdateController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		int studyNum = Integer.valueOf(req.getParameter("studyNum"));
		StudyDAO studyDAO = new StudyDAO();
		req.setAttribute("study", studyDAO.select(studyNum));
		
		result.setPath("/app/study/studyUpdate.jsp");
		return result;
		
	}

}
