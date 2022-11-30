package com.member.dao;

import javax.servlet.http.HttpSession;

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
		System.out.println("이건 2번");
		sqlSession.insert("userSQL.memberwrite", memberDTO);
	}

	@Override
	public MemberDTO getMember(String id) {
		return sqlSession.selectOne("userSQL.getMember", id);	
	}

	@Override
	public MemberDTO memberlogin(MemberDTO memberDTO) {
		return sqlSession.selectOne("userSQL.memberlogin", memberDTO);	
	}




}
