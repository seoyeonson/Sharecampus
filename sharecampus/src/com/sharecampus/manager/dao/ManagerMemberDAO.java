package com.sharecampus.manager.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.sharecampus.member.vo.MemberVO;

public class ManagerMemberDAO {
	public SqlSession sqlSession;

	public ManagerMemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public List<MemberVO> selectAll(HashMap<String, Integer> pageMap) {
		return sqlSession.selectList("managermember.selectAll", pageMap);
	}

	public void delete(int memberNum) {
		sqlSession.delete("managermember.delete", memberNum);
	}

	public void update(MemberVO memberVO) {
		sqlSession.update("managermember.update", memberVO);
	}

	public int getTotal() {
		return sqlSession.selectOne("managermember.getTotal");
	}
}
