package com.sharecampus.activities.dao;

public class ActivitiesDAO {
	public SqlSession sqlSession;
	
	public ActivitiesDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	
	
	
}
