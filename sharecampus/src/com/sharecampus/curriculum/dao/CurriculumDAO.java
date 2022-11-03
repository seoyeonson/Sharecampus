package com.sharecampus.curriculum.dao;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import com.sharecampus.curriculum.vo.CurriculumVO;

public class CurriculumDAO {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String driver = "com.mysql.cj.jdbc.Driver";

	String url = "jdbc:mysql://localhost:3306/sharecampus";
	String user = "root";
	String pw = "1234";

	public CurriculumDAO() {
		try {
			Class.forName(driver);

			conn = DriverManager.getConnection(url, user, pw);

			System.out.println("[Database 연결 성공]");

		} catch (SQLException e) {

			System.out.println("[SQL Error : " + e.getMessage() + "]");

		} catch (ClassNotFoundException e1) {

			System.out.println("[JDBC Connector Driver Error : " + e1.getMessage() + "]");
		}
	}

	public void close() throws SQLException {
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}

	private List<CurriculumVO> buildList(ResultSet rs) throws SQLException {
		List<CurriculumVO> list = new ArrayList<>();

		while (rs.next()) {
			int curri_num = rs.getInt("curri_num");
			int member_num = rs.getInt("member_num");
			String curri_title = rs.getString("curri_title");
			String curri_university = rs.getString("curri_university");
			String curri_uni_dert = rs.getString("curri_uni_dert");
			String curri_field = rs.getString("curri_field");
			String curri_division = rs.getString("curri_division");
			int curri_credits = rs.getInt("curri_credits");
			String curri_grade = rs.getString("curri_grade");
			String curri_professor = rs.getString("curri_professor");
			int curri_satisfaction_rating = rs.getInt("curri_satisfaction_rating");
			int curri_exam_rating = rs.getInt("curri_exam_rating");
			int curri_professor_rating = rs.getInt("curri_professor_rating");
			int curri_assignment_rating = rs.getInt("curri_assignment_rating");
			String curri_contents = rs.getString("curri_contents");
			Date curri_regist_date = rs.getDate("curri_regist_date");

			if (curri_contents == null)
				curri_contents = "";

			CurriculumVO cvo = new CurriculumVO(curri_num, member_num, curri_title, curri_university ,curri_uni_dert, curri_field, curri_division, curri_credits,
					curri_grade, curri_professor, curri_satisfaction_rating, curri_exam_rating, curri_professor_rating, curri_assignment_rating, 
					curri_contents, curri_regist_date);
			list.add(cvo);
		}
		return list;
	}

	public List<CurriculumVO> select() throws SQLException {
		List<CurriculumVO> list = new ArrayList<CurriculumVO>();

		try {
			pstmt = conn.prepareStatement(com.sharecampus.curriculum.sql.CurriculumSQL.SQL_CURRICULUM_SELECT);
			rs = pstmt.executeQuery();
//			System.out.println("js");
			while (rs.next()) {
				CurriculumVO cvo = new CurriculumVO();
				cvo.setCurri_num(rs.getInt("curri_num"));
				cvo.setMember_num(rs.getInt("member_num"));
				cvo.setCurri_title(rs.getString("curri_title"));
				cvo.setCurri_university(rs.getString("curri_university"));
				cvo.setCurri_uni_dert(rs.getString("curri_uni_dert"));
				cvo.setCurri_field(rs.getString("curri_field"));
				cvo.setCurri_division(rs.getString("curri_division"));
				cvo.setCurri_credits(rs.getInt("curri_credits"));
				cvo.setCurri_grade(rs.getString("curri_grade"));
				cvo.setCurri_professor(rs.getString("curri_professor"));
				cvo.setCurri_contents(rs.getString("curri_contents"));
				cvo.setCurri_satisfaction_rating(rs.getInt("curri_satisfaction_rating"));
				cvo.setCurri_exam_rating(rs.getInt("curri_exam_rating"));
				cvo.setCurri_assignment_rating(rs.getInt("curri_assignment_rating"));
				cvo.setCurri_exam_rating(rs.getInt("curri_professor_rating"));
				cvo.setCurri_regist_date(rs.getDate("curri_regist_date"));
				list.add(cvo);
			}
		} finally {
			close();
		}
		return list;
	}

	public int insert(CurriculumVO cvo) throws SQLException {
		int cnt = 0;

		String curri_title = cvo.getCurri_title();
		String curri_uni_dert = cvo.getCurri_uni_dert();
		String curri_field = cvo.getCurri_field();
		String curri_division = cvo.getCurri_division();
		int curri_credits = cvo.getCurri_credits();
		String curri_grade = cvo.getCurri_grade();
		String curri_professor = cvo.getCurri_professor();
		int curri_satisfaction_rating = cvo.getCurri_satisfaction_rating();
		int curri_exam_rating = cvo.getCurri_exam_rating();
		int curri_assignment_rating = cvo.getCurri_assignment_rating();
		int curri_professor_rating = cvo.getCurri_professor_rating();
		String curri_contents = cvo.getCurri_contents();

		int num;
		String[] generatedCols = { "curri_num" };
		try {
			pstmt = conn.prepareStatement(com.sharecampus.curriculum.sql.CurriculumSQL.SQL_CURRICULUM_INSERT,
					generatedCols);
			pstmt.setString(1, curri_title);
			pstmt.setString(2, curri_uni_dert);
			pstmt.setString(3, curri_field);
			pstmt.setString(4, curri_division);
			pstmt.setInt(5, curri_credits);
			pstmt.setString(6, curri_grade);
			pstmt.setString(7, curri_professor);
			pstmt.setInt(8, curri_satisfaction_rating);
			pstmt.setInt(9, curri_exam_rating);
			pstmt.setInt(10, curri_assignment_rating);
			pstmt.setInt(11, curri_professor_rating);
			pstmt.setString(12, curri_contents);
			cnt = pstmt.executeUpdate();

			if (cnt > 0) {
				rs = pstmt.getGeneratedKeys();
				if (rs.next()) {
					num = rs.getInt(1);
					cvo.setCurri_num(num);
				}
			}
		} finally {
			close();
		}

		return cnt;
	}

	public List<CurriculumVO> readByCurri_num(int curri_num) throws SQLException {

		List<CurriculumVO> list = null;

		try {
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(com.sharecampus.curriculum.sql.CurriculumSQL.SQL_CURRICULUM_SELECT_BY_CURRI_NUM);
			pstmt.setInt(1, curri_num);
			rs = pstmt.executeQuery();
			list = buildList(rs);
			
			conn.commit();
		} catch (SQLException e) {
			conn.rollback();
			throw e;
		} finally {
			close();
		}

		return list;

	}

	/*
	 * public List<CurriculumVO> selectByCurri_num(int cnum) throws SQLException {
	 * List<CurriculumVO> list = null;
	 * 
	 * try { pstmt = conn
	 * .prepareStatement(com.sharecampus.curriculum.sql.CurriculumSQL.
	 * SQL_CURRICULUM_SELECT_BY_CURRI_NUM); pstmt.setInt(1, cnum); rs =
	 * pstmt.executeQuery(); list = buildList(rs); } finally { close(); }
	 * 
	 * return list; }
	 */

}
