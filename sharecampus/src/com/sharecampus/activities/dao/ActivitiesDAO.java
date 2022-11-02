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
//		sqlSession.insert("activTitle", activitiesVO.getActivTitle()); DB에 리턴값만 넣고 다시 가져오지를 못했다. return 값이 없다.
//		sqlSession.insert("해시태그", activitiesVO.getActivTitle()); DB에 리턴값만 넣고 다시 가져오지를 못했다. return 값이 없다.
//		sqlSession.insert("기간", activitiesVO.getActivTitle()); DB에 리턴값만 넣고 다시 가져오지를 못했다. return 값이 없다.
		
	}
	
	
	
	
	
	
}
