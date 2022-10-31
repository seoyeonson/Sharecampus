package com.sharecampus.activities.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.sharecampus.activities.vo.ActivitiesVO;

public class ActivitiesDAO {
	public SqlSession sqlSession;
	
	public ActivitiesDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	public void insert(ActivitiesVO activitiesVO) {
		sqlSession.insert("activ.insert", activitiesVO);
	}
	
	
	
	
}
