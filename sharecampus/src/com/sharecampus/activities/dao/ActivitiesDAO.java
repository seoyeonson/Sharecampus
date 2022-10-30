package com.sharecampus.activities.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class ActivitiesDAO {
	public SqlSession sqlSession;
	
	public ActivitiesDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	
	
	
}
