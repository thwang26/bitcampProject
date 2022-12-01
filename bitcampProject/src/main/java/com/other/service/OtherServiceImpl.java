package com.other.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.member.bean.MemberDTO;
import com.member.dao.MemberDAO;

@Service                                                    
public class OtherServiceImpl implements OtherService {
	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public void delete(String memberId){
		
	}
	
	@Override
	public void update(MemberDTO memberDTO) {
		memberDAO.update(memberDTO);
	}
	
		
}
