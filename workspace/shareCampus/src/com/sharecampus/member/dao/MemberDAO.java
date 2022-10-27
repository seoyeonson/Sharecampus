package com.sharecampus.member.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class MemberDAO {
	public SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
}
	public boolean bocheckId(String memberId){
		return(Integer)sqlSession.selectOne("member.checkId", memberId) == 0;
	}
}
