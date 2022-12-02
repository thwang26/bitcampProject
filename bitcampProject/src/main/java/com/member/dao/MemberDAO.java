package com.member.dao;

import javax.servlet.http.HttpSession;

import com.member.bean.MemberDTO;

public interface MemberDAO {
	
	public void memberwrite(MemberDTO memberDTO);

	public MemberDTO getMember(MemberDTO memberDTO);
	
	public MemberDTO memberlogin(MemberDTO memberDTO);

	public String getId(String email);
	
	public String getPwd(String email);

	public MemberDTO getMember2(String id);
	
}
