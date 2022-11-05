package com.sharecampus.study.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
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
	
	public void select() {
		
	}
	
	public void selectAll() {
		
	}
	
}
