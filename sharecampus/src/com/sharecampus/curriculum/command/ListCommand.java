package com.sharecampus.curriculum.command;

import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.curriculum.dao.CurriculumDAO;
import com.sharecampus.curriculum.vo.CurriculumVO;

public class ListCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		List<CurriculumVO> list = null;
		
		try {
			list = new CurriculumDAO().select();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
        	request.setAttribute("list", list);
	}

}
