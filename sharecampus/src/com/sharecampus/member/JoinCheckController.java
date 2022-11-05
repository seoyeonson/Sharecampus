package com.sharecampus.member;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Execute;
import com.sharecampus.Result;

public class JoinCheckController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		
		if(Boolean.parseBoolean((String)req.getParameter("choice"))) {
			result.setPath("/member/joinCheckOk.me");
		} else {
			System.out.println("저장안함");
			result.setRedirect(true);
			result.setPath("/member/logoutOk.me");
		}
		return result;
	}

}
