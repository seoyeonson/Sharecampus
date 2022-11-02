package com.sharecampus.curriculum.sql;

public class CurriculumSQL {
	public static final String SQL_CURRICULUM_SELECT = "SELECT curri_num, member_num, curri_title, "
			+ "curri_university, curri_uni_dert, curri_field, curri_division, "
			+ "curri_credits, curri_grade, curri_professor, curri_contents, "
			+ "curri_satisfaction_rating, curri_exam_rating, curri_assignment_rating, curri_professor_rating, curri_regist_date "
			+ "FROM tbl_curriculum";

	public static final String SQL_CURRICULUM_INSERT = "INSERT INTO tbl_curriculum" + "(curri_title, "
			+ "curri_uni_dert, " + "curri_field, " + "curri_division, " + "curri_credits, " + "curri_grade, "
			+ "curri_professor, " + "curri_satisfaction_rating, " + "curri_exam_rating, " + "curri_assignment_rating, "
			+ "curri_professor_rating, " + "curri_contents)" + "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

public static final String SQL_CURRICULUM_SELECT_BY_CURRI_NUM =
"SELECT curri_num cnum, member_num mnum, curri_title title, curri_university university, curri_uni_dert unidert, "
+ "curri_field field, curri_division division, "
+ "curri_credits credits, curri_grade grade, curri_professor professor, "
+ "curri_contents contents, curri_satisfaction_rating satisfactionrating, curri_exam_rating examrating, "
+ "curri_professor_rating professorrating, curri_assignment_rating assignmentrating, "
+ "curri_regist_date registdate" + "FROM tbl_curriculum WHERE curri_num = ?";

	
/*
 * public static final String SQL_CURRICULUM_INC_VIEWCNT =
 * "UPDATE tbl_curriculum SET bk_viewcnt = bk_viewcnt + 1 WHERE bk_uid = ?";
 */
	 

}
