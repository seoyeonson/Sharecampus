package com.sharecampus.member.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.sharecampus.community.vo.CommunityVO;
import com.sharecampus.curriculum.vo.CurriculumVO;
import com.sharecampus.member.vo.MemberVO;
import com.sharecampus.study.vo.StudyVO;

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
	
	public MemberVO selectMemberNum(String memberId) {
		return sqlSession.selectOne("member.selectMember", memberId);
		
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
		sqlSession.update("member.updateAuthImgName", memberVO);
	}
	
	public int getCurriTotal(int memberNum) {
		return sqlSession.selectOne("member.getCurriTotal", memberNum);
	}
	
	public int getStudyTotal(int memberNum) {
		return sqlSession.selectOne("member.getStudyTotal", memberNum);
	}
	
	public int getCommTotal(int memberNum) {
		return sqlSession.selectOne("member.getCommTotal", memberNum);
	}
	
	public List<CurriculumVO> selectCurri(HashMap<String, Integer> pageMap) {
		return sqlSession.selectList("member.selectCurri", pageMap);
	}
	
	public List<StudyVO> selectStudy(HashMap<String, Integer> pageMap) {
		return sqlSession.selectList("member.selectStudy", pageMap);
	}
	
	public List<CommunityVO> selectComm(HashMap<String, Integer> pageMap) {
		return sqlSession.selectList("member.selectComm", pageMap);
	}
	
}
