package com.member.service;

import javax.servlet.http.HttpSession;

import com.member.bean.MemberDTO;

public interface MemberService {

	public void memberwrite(MemberDTO memberDTO);

	public String isExistId(String id);

	public String memberlogin(MemberDTO memberDTO, HttpSession session);

	public String getId(String email);





}
