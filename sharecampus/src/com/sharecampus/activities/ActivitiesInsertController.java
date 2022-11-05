package com.sharecampus.activities;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
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
		
//		파일 업로드 컨트롤러
		
//		String uploadPath = req.getSession().getServletContext().getRealPath("/")+"upload/";
		String uploadPath = "C:\\Users\\comed\\Desktop\\웹개발\\web_1900_hjs\\git\\Wanted\\wanted\\wanted\\sharecampus\\WebContent\\upload\\";
		int fileSize = 1024 * 1024 * 5; // 5M
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		
		Enumeration<String> fileNames = multipartRequest.getFileNames();
		int a = 0;
		
		activitiesVO.setActivManagerEmail(multipartRequest.getParameter("activManagerEmail"));
		activitiesVO.setActivManagerName(multipartRequest.getParameter("activManagerName"));
		activitiesVO.setActivManagerPhonenum(multipartRequest.getParameter("activManagerPhonenum"));
		activitiesVO.setActivManagerDept(multipartRequest.getParameter("activManagerDept"));
		activitiesVO.setActivTitle(multipartRequest.getParameter("activTitle"));
		activitiesVO.setActivUrl(multipartRequest.getParameter("activUrl"));
		activitiesVO.setActivArea(multipartRequest.getParameter("activArea"));
		activitiesVO.setActivDept(multipartRequest.getParameter("activDept"));
		activitiesVO.setActivStartDate(multipartRequest.getParameter("activStartDate"));
		activitiesVO.setActivEndDate(multipartRequest.getParameter("activEndDate"));
		activitiesVO.setActivActivingDate(multipartRequest.getParameter("activActivingDate"));
		try {
			activitiesVO.setActivPeople(Integer.valueOf(multipartRequest.getParameter("activPeople")));
		} catch (NumberFormatException e) {
			System.out.println("들어옴");
			e.printStackTrace();
		}
		
		activitiesVO.setActivField(multipartRequest.getParameter("activField"));
		activitiesVO.setActivContents(multipartRequest.getParameter("activContents"));
		while(fileNames.hasMoreElements()) {
			
			String fileName = fileNames.nextElement();
			String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
			String fileSystemName = multipartRequest.getFilesystemName(fileName);

			if(fileOriginalName == null) {				continue;}
			if(a == 0) {

			activitiesVO.setActivMainImgName(fileSystemName);
			}else {
			activitiesVO.setActivThumbnailImgName(fileSystemName);
			}
			a+=1;
		}
		activitiesDAO.insert(activitiesVO);

				//결과값을 초기화 시켜준다
//				result.setRedirect(true);
				
				result.setPath("/list.ac");
				
				return result;
	}
	
	
}
