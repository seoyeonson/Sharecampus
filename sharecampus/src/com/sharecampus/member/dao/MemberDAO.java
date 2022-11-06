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
	
	public boolean checkNickname(String memberNickname) {
		return (Integer)sqlSession.selectOne("member.checkNickname", memberNickname) == 0;
		
	}
	
	public MemberVO memberInfo(int memberNum) {
		return sqlSession.selectOne("member.memberInfo", memberNum);
		
	}
	
	public void updateNickname(MemberVO memberVO) {
		sqlSession.update("member.updateNickname", memberVO);
	}
	
	public void updateImgName(MemberVO memberVO) {
		sqlSession.update("member.updateImgName", memberVO);
	}
	
	public void updateAuthImgName(MemberVO memberVO) {
		System.out.println("인증 이미지 dao 실행");
		sqlSession.update("member.updateAuthImgName", memberVO);
	}
}
