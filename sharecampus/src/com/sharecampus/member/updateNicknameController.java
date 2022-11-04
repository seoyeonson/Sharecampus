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

public class updateNicknameController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		
		Result result = new Result();
		HttpSession session = req.getSession();
		
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		
		String memberNickname = req.getParameter("memberNickname");
		int memberNum = (Integer)session.getAttribute("memberNum");
		
		memberVO.setMemberNickname(memberNickname);
		memberVO.setMemberNum(memberNum);;
		
		memberDAO.updateNickname(memberVO);
		
		session.setAttribute("memberNickname", memberNickname);
		
		result.setPath("/member/mypageOk.me");
		
		return result;
	}

}
