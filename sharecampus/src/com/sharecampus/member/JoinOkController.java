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
		req.setCharacterEncoding("UTF-8");
		Result result = new Result();	
		HttpSession session = req.getSession();
		
		System.out.println("멤버 데이터 저장");
		
		MemberVO memberVO = new MemberVO();
		MemberDAO memberDAO = new MemberDAO();
		
		String member_id = String.valueOf(session.getAttribute("member_id"));
		String member_nickname = String.valueOf(req.getParameter("memberNickname"));
		int member_type = (Integer)session.getAttribute("member_type");
		
		memberVO.setMemberId(member_id);
		memberVO.setMemberNickname(member_nickname);
		memberVO.setMemberType(member_type);
		
		memberDAO.join(memberVO);
		
		session.removeAttribute("member_nickname");
		session.removeAttribute("member_type");
		
		result.setPath("/member/loginOk.me");
					
		return result;
	}

}
