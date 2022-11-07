package com.sharecampus.manager.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.sharecampus.activities.vo.ActivitiesVO;

public class ManagerActivitiesDAO {
	public SqlSession sqlSession;

	public ManagerActivitiesDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public List<ActivitiesVO> selectAll(HashMap<String, Integer> pageMap) {
		return sqlSession.selectList("member.selectAll", pageMap);
	}
	
	public ActivitiesVO bring(int activNum) {
		return sqlSession.selectOne("activ.bring",activNum);	
	}
	
	public void update(ActivitiesVO activitiesVO) {
		sqlSession.update("board.update", activitiesVO);
	}
}