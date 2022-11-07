package com.sharecampus.study.dao;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.sharecampus.study.vo.StudyDTO;
import com.sharecampus.study.vo.StudyVO;

public class StudyDAO {
	public SqlSession sqlSession;
	
	public StudyDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(StudyVO studyVO) {
		sqlSession.insert("study.insert", studyVO);
	}
	
	public int getSequence(){
		return sqlSession.selectOne("study.getSequence");
	}
	
	public List<StudyDTO> selectAll(HashMap<String, Integer> pageMap) {
		return sqlSession.selectList("study.selectAll", pageMap);
	}

	public int getTotal() {
		return sqlSession.selectOne("study.getTotal");
	}
	
	public StudyDTO select(int studyNum) {
		return sqlSession.selectOne("study.select", studyNum);
	}
	
	public void delete(int studyNum) {
		sqlSession.delete("study.delete", studyNum);
	}
	
	public void update(StudyVO studyVO) {
		sqlSession.update("study.update", studyVO);
	}
	
}
