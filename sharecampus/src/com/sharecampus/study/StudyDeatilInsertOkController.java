package com.sharecampus.study;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.study.dao.StudyDAO;
import com.sharecampus.study.vo.StudyVO;

public class StudyDeatilInsertOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		
		Result result = new Result();
		StudyDAO studyDAO = new StudyDAO();
		StudyVO studyVO = new StudyVO();
		int studyNum = 0;
		
		
		studyVO.setStudyNum(Integer.valueOf(req.getParameter("studyNum")));
		studyVO.setMemberNum(Integer.valueOf(req.getParameter("memberNum")));
		studyVO.setStudyTitle(req.getParameter("studyTitle"));
		studyVO.setStudyIntro(req.getParameter("studyIntro"));
		studyVO.setStudyArea(req.getParameter("studyArea"));
		studyVO.setStudyPeople(Integer.valueOf(req.getParameter("studyPeople")));
		studyVO.setStudyRegistDate(req.getParameter("studyRegistDate"));
		studyVO.setStudyIng(Boolean.parseBoolean(req.getParameter("studyIng")));
		studyVO.setStudyDepart(req.getParameter("studyDepart"));
		studyVO.setStudyContact(req.getParameter("studyContact"));
		
		
		studyDAO.insert(studyVO);
		
//		studyNum = StudyDAO.getSequence();
		
//		Enumeration<String> fileNames = multipartRequest.getFileNames();
		
//		while(fileNames.hasMoreElements()) {
//			String fileName = fileNames.nextElement();
//			String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
//			String fileSystemName = multipartRequest.getFilesystemName(fileName);
//			
//			if(fileOriginalName == null) {continue;}
//			
//			FileVO fileVO = new FileVO();
//			fileVO.setFileOriginalName(fileOriginalName);
//			fileVO.setFileSystemName(fileSystemName);
//			fileVO.setBoardNumber(boardNumber);
//			
//			fileDAO.insert(fileVO);
//		}
//		result.setPath("/study/studyDetailInsertOk.su");
		
		result.setPath(req.getContextPath()+"/study/list.su");
		return result;
	}

}
