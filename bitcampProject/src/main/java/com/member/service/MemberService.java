package com.member.service;

import com.member.bean.MemberDTO;

public interface MemberService {

	public void memberwrite(MemberDTO memberDTO);

	public String isExistId(String id);

}
