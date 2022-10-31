package com.sharecampus.curriculum.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.sharecampus.curriculum.vo.CurriculumVO;

public class CurriculumDAO {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String driver = "com.mysql.cj.jdbc.Driver";

	String url = "jdbc:mysql://localhost:3306/curriculum";
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

	public List<CurriculumVO> select() throws SQLException {
		List<CurriculumVO> list = new ArrayList<CurriculumVO>();
		

		try {
			pstmt = conn.prepareStatement(com.sharecampus.curriculum.sql.CurriculumSQL.SQL_CURRICULUM_SELECT);
			rs = pstmt.executeQuery();
//			System.out.println("js");
			 while (rs.next()) {				
				CurriculumVO cvo = new CurriculumVO();
				cvo.setCurri_num                   (rs.getInt("curri_num"));
				cvo.setMember_num                  (rs.getInt("member_num"));
				cvo.setCurri_title                  (rs.getString("curri_title"));
				cvo.setCurri_university 		   (rs.getString("curri_university"));
				cvo.setCurri_uni_dert              (rs.getString("curri_uni_dert"));
				cvo.setCurri_field                 (rs.getString("curri_field"));
				cvo.setCurri_division              (rs.getString("curri_division"));
				cvo.setCurri_credits               (rs.getInt("curri_credits"));
				cvo.setCurri_grade                 (rs.getString("curri_grade"));
				cvo.setCurri_professor             (rs.getString("curri_professor"));
				cvo.setCurr_contents               (rs.getString("curr_contents"));
				cvo.setCurri_satisfaction_rating   (rs.getInt("curri_satisfaction_rating"));
				cvo.setCurri_exam_rating           (rs.getInt("curri_exam_rating"));
				cvo.setCurri_regist_date           (rs.getDate("curri_regist_date"));
				list.add(cvo);
			}
		} finally {
			close();
		}
		return list;
	}
}