package com.sharecampus.community.comments.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.sharecampus.community.vo.CommunityDTO;
import com.mybatis.config.MyBatisConfig;

public class CommunityCommentsDAO {
	public SqlSession sqlSession;
	
	public CommunityCommentsDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	
	
}
