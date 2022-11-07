package com.sharecampus.manager.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.sharecampus.banner.vo.BannerVO;

public class ManagerBannerDAO {
	public SqlSession sqlSession;

	public ManagerBannerDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public BannerVO view(int bannerNum) {
		return sqlSession.selectOne("banner.view",bannerNum);	
	}
	
	public void update(BannerVO bannerVO) {
		sqlSession.update("banner.update", bannerVO);
	}
}
