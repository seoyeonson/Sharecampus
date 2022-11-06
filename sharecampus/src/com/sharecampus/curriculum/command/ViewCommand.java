package com.sharecampus.curriculum.command;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.curriculum.dao.CurriculumDAO;
import com.sharecampus.curriculum.vo.CurriculumVO;

public class ViewCommand implements Command {

	/*
	 * @Override public void execute(HttpServletRequest request, HttpServletResponse
	 * response) { List<CurriculumVO> list = null;
	 * 
	 * try { list = new CurriculumDAO().select1(2); } catch (SQLException e) {
	 * e.printStackTrace(); }
	 * 
	 * request.setAttribute("list", list); }
	 */

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		List<CurriculumVO> list = null;

		int curri_num = Integer.parseInt(request.getParameter("curri_num"));

		try {
			list = new CurriculumDAO().read(curri_num);
			request.setAttribute("list", list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	/*
	 * @Override public void execute(HttpServletRequest request, HttpServletResponse
	 * response) { List<CurriculumVO> list = null;
	 * 
	 * int curri_num = Integer.parseInt(request.getParameter("curri_num"));
	 * 
	 * try { list = new CurriculumDAO().readByCurri_num(curri_num);
	 * request.setAttribute("list", list); } catch (SQLException e) {
	 * e.printStackTrace(); } }
	 */
}