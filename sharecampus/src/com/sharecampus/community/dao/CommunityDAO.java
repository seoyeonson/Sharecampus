package com.sharecampus.community.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.sharecampus.community.vo.CommunityDTO;
import com.sharecampus.community.vo.CommunityVO;
import com.mybatis.config.MyBatisConfig;

public class CommunityDAO {
	public SqlSession sqlSession;
	
	public CommunityDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<CommunityDTO> selectAll(HashMap<String, Integer> pageMap) {
		return sqlSession.selectList("community.selectAll",pageMap);
	}
	
	public void insert(CommunityVO communityVO) {
		sqlSession.insert("community.insert", communityVO);
	}

	public CommunityDTO select(int communityNum) {
		return sqlSession.selectOne("community.select", communityNum);
	}
	
	
	
	
	
}
