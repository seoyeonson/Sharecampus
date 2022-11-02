package com.sharecampus.curriculum.command;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.curriculum.dao.CurriculumDAO;
import com.sharecampus.curriculum.vo.CurriculumVO;

public class WriteCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int cnt = 0;
		
		String curri_title 							= request.getParameter("title");
		String curri_uni_dert 						= request.getParameter("major");
		String curri_field 							= request.getParameter("curri_field");
		String curri_division 						= request.getParameter("subject");
		int curri_credits 							= Integer.parseInt(request.getParameter("credits"));
		String curri_grade 							= request.getParameter("grade");
		String curri_professor 						= request.getParameter("professorName");
		int curri_satisfaction_rating 				= Integer.parseInt(request.getParameter("classStar"));
		int curri_exam_rating 						= Integer.parseInt(request.getParameter("examStar"));
		int curri_assignment_rating 				= Integer.parseInt(request.getParameter("workStar"));
		int curri_professor_rating 					= Integer.parseInt(request.getParameter("professorStar"));
		String curr_contents 						= request.getParameter("editordata");
		
		CurriculumVO cvo = new CurriculumVO();
		cvo.setCurri_title(curri_title);
		cvo.setCurri_uni_dert(curri_uni_dert);
		cvo.setCurri_field(curri_field);
		cvo.setCurri_division(curri_division);
 		cvo.setCurri_credits(curri_credits);
		cvo.setCurri_grade(curri_grade);
		cvo.setCurri_professor(curri_professor);
		cvo.setCurri_satisfaction_rating(curri_satisfaction_rating);
		cvo.setCurri_exam_rating(curri_exam_rating);
		cvo.setCurri_assignment_rating(curri_assignment_rating);
		cvo.setCurri_professor_rating(curri_professor_rating);
		cvo.setCurri_contents(curr_contents);
		
		if (curri_title != null && curri_title.trim().length() > 0) {
			try {
				cnt = new CurriculumDAO().insert(cvo);
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}

		request.setAttribute("result", cnt);
		request.setAttribute("cvo", cvo); 
		
		
	}

}
