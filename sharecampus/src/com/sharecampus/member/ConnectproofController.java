package com.sharecampus.member;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.member.dao.MemberDAO;
import com.sharecampus.member.vo.MemberVO;

public class ConnectproofController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		System.out.println("ConnectproofController 들어옴");
		req.setCharacterEncoding("UTF-8");
		
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		
		try {
//			String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
			String uploadPath = "/Users/son/Documents/wanted/sharecampus/WebContent/upload";
			int fileSize = 1024 * 1024 * 5; // 5M
			
			MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
			
			Enumeration<String> fileNames = multipartRequest.getFileNames();
			
			while(fileNames.hasMoreElements()) {
				String fileName = fileNames.nextElement();
				String memberAuthImgName = multipartRequest.getFilesystemName(fileName);
				
				if(memberAuthImgName == null) {continue;}
		
				
				int memberNum = (Integer)req.getSession().getAttribute("memberNum");
				System.out.println(memberNum);
				memberVO.setMemberNum(memberNum);
				memberVO.setMemberAuthImgName(memberAuthImgName);
				memberVO.setMemberAuth(1);
				
				System.out.println(memberVO);
				
				memberDAO.updateAuthImgName(memberVO);
			}
			
			result.setPath("/member/mypageOk.me");
		} catch (Exception e) {
			req.setAttribute("loginOK", "false");
			result.setPath("");
		}
		
		return result;
	}

}
