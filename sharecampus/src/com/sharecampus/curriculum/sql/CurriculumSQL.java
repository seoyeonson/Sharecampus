package com.sharecampus.curriculum.sql;

public class CurriculumSQL {
	public static final String SQL_CURRICULUM_SELECT = "SELECT curri_num, member_num, curri_title, "
			+ "curri_university, curri_uni_dert, curri_field, curri_division, "
			+ "curri_credits, curri_grade, curri_professor, curri_contents, "
			+ "curri_satisfaction_rating, curri_exam_rating, curri_assignment_rating, curri_professor_rating, curri_regist_date "
			+ "FROM tbl_curriculum";

	public static final String SQL_CURRICULUM_INSERT = "INSERT INTO tbl_curriculum" + "(curri_university, curri_title, "
			+ "curri_uni_dert, " + "curri_field, " + "curri_division, " + "curri_credits, " + "curri_grade, "
			+ "curri_professor, " + "curri_satisfaction_rating, " + "curri_exam_rating, " + "curri_assignment_rating, "
			+ "curri_professor_rating, " + "curri_contents)" + "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

	public static final String SQL_CURRICULUM_SELECT_BY_CURRI_NUM = "SELECT curri_num, member_num, curri_title, curri_university, curri_uni_dert, "
			+ "curri_field, curri_division, " + "curri_credits, curri_grade, curri_professor, "
			+ "curri_contents, curri_satisfaction_rating, curri_exam_rating, "
			+ "curri_professor_rating, curri_assignment_rating, " + "curri_regist_date "
			+ "FROM tbl_curriculum WHERE curri_num = ?";
	
	public static final String SQL_CURRICULUM_UPDATE = 
			"UPDATE tbl_curriculum SET curri_title = ?, curri_uni_dert = ?, curri_field = ?, "
			+ "curri_division = ?, curri_credits = ?, curri_grade = ?, curri_professor = ?, "
			+ "curri_satisfaction_rating = ?, curri_exam_rating = ?, curri_assignment_rating = ?, "
			+ "curri_professor_rating = ?, curri_contents = ? WHERE curri_num = ?";
	
	public static final String SQL_CURRICULUM_DELETE = "DELETE FROM tbl_curriculum WHERE curri_num = ?";

			
	/*
	 * public static final String SQL_CURRICULUM_INC_VIEWCNT =
	 * "UPDATE tbl_curriculum SET bk_viewcnt = bk_viewcnt + 1 WHERE bk_uid = ?";
	 */

}
