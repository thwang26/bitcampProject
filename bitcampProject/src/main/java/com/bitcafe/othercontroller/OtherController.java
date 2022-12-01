package com.bitcafe.othercontroller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.member.bean.MemberDTO;
import com.other.service.OtherService;
import com.store.service.StoreService;

@Controller
public class OtherController {
	
	  @Autowired 
	  private OtherService otherService;
	 

	@RequestMapping(value = "/orderList", method = RequestMethod.GET)
	public String orderList() {
		return "/others/orderList";
	}

	@RequestMapping(value = "/memOut", method = RequestMethod.GET)
	public String memOut() {
		return "/others/memOut";
	}

	@RequestMapping(value = "/updateMem", method = RequestMethod.GET)
	public String updateMem() {
		return "/others/updateMem";
	}

	@RequestMapping(value = "/logout")
	@ResponseBody
	public void logout(HttpSession session) {
		session.invalidate();
	}
	
	@PostMapping(value="update")
	@ResponseBody
	public void update(@ModelAttribute MemberDTO memberDTO) {
		otherService.update(memberDTO);
	}
	
	/*
	 * @GetMapping(value = "/memberOut")
	 * 
	 * @ResponseBody public void memberOut(@RequestParam(required = false,
	 * defaultValue = ""){ }
	 */
	/*
	 * @GetMapping("getUserInfo") public MemberDTO getUserInfo(String id)
	 * { return storeService.getUserInfo(id); }
	 */
}
