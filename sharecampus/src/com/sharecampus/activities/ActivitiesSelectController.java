package com.sharecampus.activities;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Result;
import com.sharecampus.activities.dao.ActivitiesDAO;
import com.sharecampus.activities.vo.ActivitiesVO;

public class ActivitiesSelectController {

	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		ActivitiesDAO activitiesDAO = new ActivitiesDAO();
		ActivitiesVO activitiesVO = new ActivitiesVO();
		Result result = new Result();

		activitiesVO.setActivTitle(req.getParameter("activTitle"));
		activitiesVO.setActivDept(req.getParameter("activDept"));
		activitiesVO.setActivContents(req.getParameter("activContents"));
	 // activitiesVO.setActivMainImgName(req.getParameter("activMainImgName"));
		activitiesVO.setActivThumbnailImgName(req.getParameter("activThumbnailImgName"));

		// 파라미터 값으로 받아온 activitiesVO를 activ 쿼리문에 삽입 => 테이블에 넣는다.
		activitiesDAO.select(activitiesVO);

		// 결과값을 초기화 시켜준다
//		result.setRedirect(true);

		// jsp로 보여주기만 하면된다?
		result.setPath(req.getContextPath() + "/activities/listDs.ac");

		return result;
	}

}
