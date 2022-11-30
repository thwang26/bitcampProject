package com.member.dao;

import javax.servlet.http.HttpSession;

import com.member.bean.MemberDTO;

public interface MemberDAO {
	
	public void memberwrite(MemberDTO memberDTO);

	public MemberDTO getMember(String id);
	
	public MemberDTO memberlogin(MemberDTO memberDTO);
	
}
