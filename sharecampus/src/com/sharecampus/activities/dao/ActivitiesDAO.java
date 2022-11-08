package com.sharecampus.activities.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<ActivitiesVO> selectAll(HashMap<String, Integer> pageMap ) {
		return sqlSession.selectList("activ.selectAll", pageMap); //selectOne 인지 List 인지 잘모르겠음
	}
	
	public int getTotal() {
		return sqlSession.selectOne("activ.getTotal");
	}
	
	public ActivitiesVO bring(int activNum) {
		return sqlSession.selectOne("activ.bring",activNum);
		
	}
	
	
		
		
	}
	
	
	
	
	
	
