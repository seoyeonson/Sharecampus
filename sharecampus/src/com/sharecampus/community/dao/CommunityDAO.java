package com.sharecampus.community.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.sharecampus.community.vo.CommunityDTO;
import com.mybatis.config.MyBatisConfig;

public class CommunityDAO {
	public SqlSession sqlSession;
	
	public CommunityDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<CommunityDAO> selectAll() {
		return sqlSession.selectList("community.selectAll");
	}
}
