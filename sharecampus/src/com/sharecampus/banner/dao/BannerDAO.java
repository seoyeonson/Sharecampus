package com.sharecampus.banner.dao;

import org.apache.ibatis.session.SqlSession;
import com.mybatis.config.MyBatisConfig;

public class BannerDAO {
	public SqlSession sqlSession;
	
	public BannerDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true); 
	}
}
