package com.sharecampus.main.dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.sharecampus.activities.vo.ActivitiesVO;
import com.sharecampus.community.vo.CommunityDTO;
import com.sharecampus.curriculum.vo.CurriculumVO;
import com.sharecampus.study.vo.StudyDTO;

public class MainDAO {
	
	public SqlSession sqlSession;
	
	public MainDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<CommunityDTO> communitySelectAll(HashMap<String, Integer> pageMap) {
		return sqlSession.selectList("community.selectAll", pageMap);
	}
	
	public List<ActivitiesVO> acitivSelectAll(HashMap<String, Integer> pageMap ) {
		return sqlSession.selectList("activ.selectAll", pageMap); //selectOne 인지 List 인지 잘모르겠음
	}
	
	public List<StudyDTO> studySelectAll(HashMap<String, Integer> pageMap) {
		return sqlSession.selectList("study.selectAll", pageMap);
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

			CurriculumVO cvo = new CurriculumVO(curri_num, member_num, curri_title, curri_university, curri_uni_dert,
					curri_field, curri_division, curri_credits, curri_grade, curri_professor, curri_satisfaction_rating,
					curri_exam_rating, curri_professor_rating, curri_assignment_rating, curri_contents,
					curri_regist_date);
			list.add(cvo);
		}
		return list;
	}
}
