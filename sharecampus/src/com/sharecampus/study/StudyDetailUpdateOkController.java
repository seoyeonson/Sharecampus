package com.sharecampus.study;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.study.dao.StudyDAO;
import com.sharecampus.study.vo.StudyVO;

public class StudyDetailUpdateOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		
		Result result = new Result();
		StudyDAO studyDAO = new StudyDAO();
		StudyVO studyVO = new StudyVO();
		
		int	studyNum = Integer.valueOf(req.getParameter("studyNum"));
		int memberNum = (Integer)req.getSession().getAttribute("memberNum");
		
		studyVO.setStudyNum(studyNum);
		studyVO.setMemberNum(memberNum);
		
		studyVO.setStudyTitle(req.getParameter("studyTitle"));
		studyVO.setStudyIntro(req.getParameter("studyIntro"));
		studyVO.setStudyArea(req.getParameter("studyArea"));
		studyVO.setStudyRegistDate(req.getParameter("studyRegistDate"));

		try {
			studyVO.setStudyIng(Boolean.parseBoolean(req.getParameter("studyIng")));
		} catch (Exception e) {
			System.out.println("boolean오류!!");
			e.printStackTrace();
		}
		studyVO.setStudyDepart(req.getParameter("studyDepart"));
		studyVO.setStudyContact(req.getParameter("studyContact"));
		studyVO.setStudyPeople(Integer.valueOf(req.getParameter("studyPeople")));

//		try {
////			studyVO.setStudyNum(Integer.valueOf(req.getParameter("studyNum")));
////			studyVO.setMemberNum(Integer.valueOf(req.getParameter("memberNum")));
//			studyVO.setMemberNum((Integer)req.getSession().getAttribute("memberNum"));
////			int memberNum = (Integer)req.getSession().getAttribute("memberNum");
//		} catch (NumberFormatException e) {
//			e.printStackTrace();
//		}
		
		//1. 게시글 수정
		studyDAO.update(studyVO);
		
		result.setPath("/study/listDs.su?studyNum="+studyNum);
		return result;
	
	}

}
