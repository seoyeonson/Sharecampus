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

public class CheckIdController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		System.out.println("CheckIdController 들어옴");
		Result result = new Result();
		HttpSession session = req.getSession();
		
		String member_id = String.valueOf(session.getAttribute("member_id"));
		String member_nickname = String.valueOf(session.getAttribute("member_nickname"));
		int member_type = (int)session.getAttribute("member_type");
		
		MemberVO memberVO = new MemberVO();
		MemberDAO memberDAO = new MemberDAO();

		memberVO.setMemberId(member_id);
		memberVO.setMemberNickname(member_nickname);
		memberVO.setMemberType(member_type);
		
		
		// 만약 로그인 정보가 없을 경우
		if(memberDAO.checkId(memberVO)) {
			// 바로 회원가입할지 체크
			result.setPath("/app/member/join.jsp");
		} else {
			// 로그인 완료
			result.setPath("/member/loginOk.me");
		}
		
		return result;
	}

}
