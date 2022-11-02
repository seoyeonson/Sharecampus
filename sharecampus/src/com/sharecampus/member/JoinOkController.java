package com.sharecampus.member;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.member.dao.MemberDAO;
import com.sharecampus.member.vo.MemberVO;

public class JoinOkController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		
		Result result = new Result();	
		HttpSession session = req.getSession();
		
		System.out.println("joinOk 들어옴 " + (boolean)req.getAttribute("choice"));
		
		if((boolean)req.getAttribute("choice")) {
			
			MemberVO memberVO = new MemberVO();
			MemberDAO memberDAO = new MemberDAO();
			
			String member_id = String.valueOf(session.getAttribute("member_id"));
			String member_nickname = String.valueOf(session.getAttribute("member_nickname"));
			int member_type = (Integer)session.getAttribute("member_type");
			
			memberVO.setMemberId(member_id);
			memberVO.setMemberNickname(member_nickname);
			memberVO.setMemberType(member_type);
			
			memberDAO.join(memberVO);
			
			result.setRedirect(true);
			result.setPath(req.getContextPath() + "/member/loginOk.me");
		} else {
			result.setRedirect(true);
			result.setPath(req.getContextPath() + "/");
		}
		
		session.removeAttribute("member_nickname");
		session.removeAttribute("member_type");
			
//		
		return null;
	}

}