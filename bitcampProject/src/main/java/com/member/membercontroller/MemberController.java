package com.member.membercontroller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.member.bean.MemberDTO;
import com.member.service.MemberService;
import com.member.service.MemberServiceImpl;

@Component
@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/memberwriteForm", method=RequestMethod.GET)
	public String memberwriteForm() {
		return "/member/memberwriteForm";
	}
	
	@RequestMapping(value="/loginForm")
	public String loginForm() {
		return "/member/loginForm";
	}
	
	@PostMapping(value="memberwrite")
	@ResponseBody
	public void write(@ModelAttribute MemberDTO memberDTO) {
		memberService.memberwrite(memberDTO);
	}
	
	@PostMapping(value="isExistId")
	@ResponseBody
	public String isExistId(@RequestParam String id) {
		return memberService.isExistId(id);
	}
	
	
	
}
