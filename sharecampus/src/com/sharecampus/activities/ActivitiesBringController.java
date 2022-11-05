package com.sharecampus.activities;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.activities.dao.ActivitiesDAO;
import com.sharecampus.activities.vo.ActivitiesVO;

public class ActivitiesBringController implements Execute {

	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		ActivitiesDAO activitiesDAO = new ActivitiesDAO();
		ActivitiesVO activitiesVO = new ActivitiesVO();
		Result result = new Result();
		int activNum = Integer.valueOf(req.getParameter("activNum"));
		
		
		activitiesVO = activitiesDAO.bring(activNum);
		req.setAttribute("activity", activitiesVO);
		
		result.setPath("/app/activity/activity_info.jsp");
		return result;
		
		
		
		
		
	}
		
}
