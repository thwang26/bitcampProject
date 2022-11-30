package com.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.member.bean.MemberDTO;

@Repository
@Transactional
public class MemberDAOMyBatis implements MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void memberwrite(MemberDTO memberDTO) {
		sqlSession.insert("memberSQL.memberwrite", memberDTO);
	}

	@Override
	public MemberDTO getMember(String id) {
		return sqlSession.selectOne("memberSQL.getMember", id);	
	}


}
