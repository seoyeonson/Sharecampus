package com.sharecampus.activities;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sharecampus.Execute;
import com.sharecampus.Result;

public class ActivitiesInsertOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		
		//request 객체, 업로드 할 경로, 파일의 크기, 인코딩 방식, 이름변경 정책
		String uploadPath = req.getSession().getServletContext().getRealPath("/")+"upload/";
		int fileSize = 1024 * 1024 * 5; // 5M
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		return null;
	}

}
