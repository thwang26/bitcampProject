package com.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.member.bean.MemberDTO;

public interface MemberDAO {
	
	public void memberwrite(MemberDTO memberDTO);

	public MemberDTO getMember(String id);
	

}
