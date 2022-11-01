package com.sharecampus.activities;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.activities.dao.ActivitiesDAO;
import com.sharecampus.activities.vo.ActivitiesVO;

public class ActivitiesInsertController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		ActivitiesDAO activitiesDAO = new ActivitiesDAO();
		ActivitiesVO activitiesVO = new ActivitiesVO();
		Result result = new Result();
		
		activitiesVO.setActivManagerEmail(req.getParameter("activManagerEmail"));
		activitiesVO.setActivManagerName(req.getParameter("activManagerName"));
		activitiesVO.setActivManagerPhonenum(req.getParameter("activManagerPhonenum"));
		activitiesVO.setActivManagerDept(req.getParameter("activManagerDept"));
		activitiesVO.setActivTitle(req.getParameter("activTitle"));
		activitiesVO.setActivUrl(req.getParameter("activUrl"));
		activitiesVO.setActivArea(req.getParameter("activArea"));
		activitiesVO.setActivDept(req.getParameter("activDept"));
		activitiesVO.setActivStartDate(req.getParameter("activStartDate"));
		activitiesVO.setActivEndDate(req.getParameter("activEndDate"));
		activitiesVO.setActivActivingDate(req.getParameter("activActivingDate"));
		try {
			activitiesVO.setActivPeople(Integer.valueOf(req.getParameter("activPeople")));
		} catch (NumberFormatException e) {
			System.out.println("들어옴");
			e.printStackTrace();
		}
		activitiesVO.setActivField(req.getParameter("activField"));
		activitiesVO.setActivContents(req.getParameter("activContents"));
		activitiesVO.setActivMainImgName(req.getParameter("activMainImgName"));
		activitiesVO.setActivThumbnailImgName(req.getParameter("activThumbnailImgName"));
		
		
				//파라미터 값으로 받아온 activitiesVO를 activ 쿼리문에 삽입 => 테이블에 넣는다.
				activitiesDAO.insert(activitiesVO);
				
				//결과값을 초기화 시켜준다
//				result.setRedirect(true);
				
				result.setPath(req.getContextPath() + "/list.ac");
				
				return result;
	}
	
	
}
