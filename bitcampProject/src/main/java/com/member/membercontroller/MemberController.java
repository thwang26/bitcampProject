package com.member.membercontroller;

import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
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

@Component
@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private JavaMailSender mailSender;
	
	
	@RequestMapping(value="/memberwriteForm", method=RequestMethod.GET)
	public String memberwriteForm() {
		return "/member/memberwriteForm";
	}
	
	@RequestMapping(value="/loginForm", method=RequestMethod.GET)
	public String loginForm() {
		return "/member/loginForm";
	}
	
	@RequestMapping(value="/memberloginForm", method=RequestMethod.GET)
	public String memberloginForm() {
		return "/member/memberloginForm";
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
	
	@PostMapping(value="memberlogin")
	@ResponseBody
	public String memberlogin(@ModelAttribute MemberDTO memberDTO, HttpSession session) {
		session.setAttribute("name", memberDTO.getName());
		session.setAttribute("userId", memberDTO.getId());
		
		return memberService.memberlogin(memberDTO);
		
	}
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String index() {
		return "/index";
	}
	
	@RequestMapping(value="/loginSNS", method=RequestMethod.GET)
	public String index(@RequestParam String name, HttpSession session) {
		session.setAttribute("name", name);
		return "/index";
	}
	
	@RequestMapping(value="/memberIdSearch", method=RequestMethod.GET)
	public String memberIdSearch() {
		return "/member/memberIdSearch";
	}
	
	@RequestMapping(value="/memberPwdSearch", method=RequestMethod.GET)
	public String memberPwdSearch() {
		return "/member/memberPwdSearch";
	}
	
	@PostMapping("getId")
	@ResponseBody
	public String getId(String email) {
		return memberService.getId(email);
	}
	
	@PostMapping("getPwd")
	@ResponseBody
	public String getPwd(String email) {
		return memberService.getPwd(email);
	}
	
	
	/* ????????? ?????? */
	@RequestMapping(value = "/mailCheck", method = RequestMethod.GET)
	@ResponseBody
	public String mailCheckGET(String email) throws Exception {

		/* ???(View)????????? ????????? ????????? ?????? */
		logger.info("????????? ????????? ?????? ??????");
		logger.info("???????????? : " + email);

		/* ????????????(??????) ?????? */
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		logger.info("???????????? " + checkNum);

		/* ????????? ????????? */
		String setFrom = "zian0315@naver.com";
		String toMail = email;
		String title = "bitCafe ??????????????? ?????????????????????.";
		String content = "???????????????, bitCafe ??????????????????." + "<br><br>" + "?????? ????????? " + checkNum + "?????????." + "<br>"
				+ "?????? ??????????????? ???????????? ???????????? ???????????? ?????????.";

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content, true);
			mailSender.send(message);

		} catch (Exception e) {
			e.printStackTrace();
		}

		String num = Integer.toString(checkNum);
		// System.out.println(num);
		return num;

	}
	
	
	
}
