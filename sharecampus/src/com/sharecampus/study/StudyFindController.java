package com.sharecampus.study;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.study.dao.StudyDAO;
import com.sharecampus.study.vo.Criteria;

public class StudyFindController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json;charset=utf-8");
		System.out.println("컨트롤러 들어옴");
		/* PrintWriter out = resp.getWriter(); */
		 
		JSONArray studyList = new JSONArray();
		 
		Criteria criteria = new Criteria();
		criteria.setAreaSelect(req.getParameter("areaSelect"));
		criteria.setDepartSelect(req.getParameter("departSelect"));
		StudyDAO studyDAO = new StudyDAO();
		studyDAO.find(criteria).stream().map(studyVO -> new JSONObject(studyVO)).forEach(study -> studyList.put(study));
		/*
		 * out.write(studyList.toString()); out.close();
		 */
		return null;
	}

}
