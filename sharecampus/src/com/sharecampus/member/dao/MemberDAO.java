package com.sharecampus.member.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.sharecampus.member.vo.MemberVO;

public class MemberDAO {
	public SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public boolean checkId(MemberVO memberVO) {
		return (Integer)sqlSession.selectOne("member.checkId", memberVO) == 0;
	}
	
	public void join(MemberVO memberVO){
		sqlSession.insert("member.join", memberVO);
	}
	
	public int selectMemberNum(String memberId) {
		return (Integer)sqlSession.selectOne("member.selectMemberNum", memberId);
		
	}
}
