package com.sharecampus.manager;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Result;

public class ManagerFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("dd");
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("dd");
		String target = req.getRequestURI().substring(req.getContextPath().length());
		Result result = null;

		if (target.equals("/manager/memberAll.ma")) {
//		회원 목록 관리 페이지
			result = new Result();
			result.setPath("/app/manager/manager_memberAll.jsp");
		} else if (target.equals("/manager/memberConfirm.ma")) {
//		회원 인증 관리 페이지
			result = new Result();
			result.setPath("/app/manager/manager_memberConfirm.jsp");
		} else if (target.equals("/manager/activityPost.ma")) {
//		대외활동 관리 페이지
			result = new Result();
			result.setPath("/app/manager/manager_activityPost.jsp");
		} else if (target.equals("/manager/settingBanner.ma")) {
//		베너 관리 페이지
			result = new Result();
			result.setPath("/app/manager/manager_settingBanner.jsp");
		} else if (target.equals("/manager/memberList.ma")) {
//		회원 목록 가져오기
			result = new MemberListController().execute(req, resp);
		} else if (target.equals("/manager/memberDelete.ma")) {
//		회원 삭제
			result = new MemberDeleteController().execute(req, resp);
		} else if (target.equals("/manager/memberAuthList.ma")) {
//		회원 인증 가져오기
			result = new MemberAuthListController().execute(req, resp);
		} else if (target.equals("/manager/memberAuthConfirm.ma")) {
//		회원 인증 승인
			result = new MemberAuthConfirmController().execute(req, resp);
		} else if (target.equals("/manager/memberAuthDeny.ma")) {
//		회원 인증 거절
			result = new MemberListController().execute(req, resp);
		} else if (target.equals("/manager/activitiesList.ma")) {
//		대외활동 공고글 가져오기 
			result = new ActivitiesListController().execute(req, resp);
		} else if (target.equals("/manager/activitiesConfirm.ma")) {
//		대외활동 공고글 승인하기
			result = new ActivitiesConfirmController().execute(req, resp);
		} else if (target.equals("/manager/activitiesDeny.ma")) {
//		대외활동 공고글 거절하기
			result = new ActivitiesDenyController().execute(req, resp);
		} else if (target.equals("/manager/bannerList.ma")) {
//		배너 가져오기	
			result = new BannerListController().execute(req, resp);
		} else if (target.equals("/manager/bannerAdd.ma")) {
//		배너 추가하기		
			result = new BannerAddController().execute(req, resp);
		} else if (target.equals("/manager/bannerDelete.ma")) {
//		배너 삭제하기	
			result = new BannerDeleteController().execute(req, resp);
		}
		if (result != null) {
			if (result.isRedirect()) {
				resp.sendRedirect(result.getPath());

			} else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}

		}
	}
}