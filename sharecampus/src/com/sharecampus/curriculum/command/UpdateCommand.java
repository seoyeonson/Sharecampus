package com.sharecampus.curriculum.command;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.curriculum.dao.CurriculumDAO;
import com.sharecampus.curriculum.vo.CurriculumVO;

public class UpdateCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int cnt = 0;

		int curri_num = Integer.parseInt(request.getParameter("curri_num"));
		String curri_title = request.getParameter("title");
		String curri_uni_dert = request.getParameter("major");
		String curri_field = request.getParameter("curri_field");
		String curri_division = request.getParameter("subject");
		int curri_credits = Integer.parseInt(request.getParameter("credits"));
		String curri_grade = request.getParameter("grade");
		String curri_professor = request.getParameter("professorName");
		int curri_satisfaction_rating = Integer.parseInt(request.getParameter("classStar"));
		int curri_exam_rating = Integer.parseInt(request.getParameter("examStar"));
		int curri_assignment_rating = Integer.parseInt(request.getParameter("workStar"));
		int curri_professor_rating = Integer.parseInt(request.getParameter("professorStar"));
		String curri_contents = request.getParameter("editordata");

		if ((curri_title != null && curri_title.trim().length() > 0)) {
			try {
				cnt = new CurriculumDAO().update(curri_num, curri_title, curri_uni_dert, curri_field, curri_division,
						curri_credits, curri_grade, curri_professor, curri_satisfaction_rating, curri_exam_rating,
						curri_assignment_rating, curri_professor_rating, curri_contents);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		request.setAttribute("result", cnt);
	}

}