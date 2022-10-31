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
		
		activitiesVO.setActiv_manager_email(req.getParameter("activ_manager_email"));
		activitiesVO.setActiv_manager_name(req.getParameter("activ_manager_name"));
		activitiesVO.setActiv_manager_phonenumber(req.getParameter("activ_manager_phonenumber"));
		activitiesVO.setActiv_manager_dept(req.getParameter("activ_manager_dept"));
		activitiesVO.setActiv_title(req.getParameter("activ_title"));
		activitiesVO.setActiv_url(req.getParameter("activ_url"));
		activitiesVO.setActiv_area(req.getParameter("activ_area"));
		activitiesVO.setActiv_dept(req.getParameter("activ_dept"));
		activitiesVO.setActiv_start_date(Integer.valueOf(req.getParameter("activ_start_date")));
		activitiesVO.setActiv_end_date(Integer.valueOf(req.getParameter("activ_end_date")));
		activitiesVO.setActiv_activing_date(Integer.valueOf(req.getParameter("activ_activing_date")));
		activitiesVO.setActiv_people(Integer.valueOf(req.getParameter("activ_people")));
		activitiesVO.setActiv_field(req.getParameter("activ_field"));
		activitiesVO.setActiv_contents(req.getParameter("activ_contents"));
		activitiesVO.setActiv_main_img_name(req.getParameter("activ_main_img_name"));
		activitiesVO.setActiv_thumbnail_img_name(req.getParameter("activ_thumbnail_img_name"));
		
		
		//파라미터 값으로 받아온 memberVO를 join 쿼리문에 삽입 => 테이블에 넣는다.
				activitiesDAO.insert(activitiesVO);
				
				//결과값을 초기화 시켜준다
				result.setRedirect(true);
				
				//회원가입 완료후에 로그인 페이지로 이동
				result.setPath(req.getContextPath() + "/activities/list.ac");
				
				return result;
	}
	
	
}
