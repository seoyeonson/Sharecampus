package com.sharecampus.curriculum.command;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.curriculum.dao.CurriculumDAO;
import com.sharecampus.curriculum.vo.CurriculumVO;

public class SelectCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int curri_num = Integer.parseInt(request.getParameter("curri_num"));
		List<CurriculumVO> list = null;
		

		try {
			list = new CurriculumDAO().selectByCurri_num(curri_num);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		request.setAttribute("list", list);
	}
}
