package com.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.member.bean.MemberDTO;
import com.member.dao.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public void memberwrite(MemberDTO memberDTO) {
		//DB
		memberDAO.memberwrite(memberDTO);
	}

	@Override
	public String isExistId(String id) {
		//DB
		MemberDTO memberDTO = memberDAO.getMember(id);
		
		if(memberDTO == null)
			return "non_exist";
		else 
			return "exist";
		
		
	}
}
