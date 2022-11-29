package com.bitcafe.othercontroller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.store.service.StoreService;

import user.bean.UserDTO;

@Component
@Controller
public class OtherController {
	/*
	 * @Autowired private StoreService storeService;
	 */

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

	@RequestMapping(value = "/DetailView", method = RequestMethod.GET)
	public String DetailView() {
		return "/others/DetailView";
	}
	@RequestMapping(value = "/logout")
	@ResponseBody
	public void logout(HttpSession session) {
		session.invalidate();
	}	
	/*
	 * @GetMapping("getUserInfo") public MemberDTO getUserInfo(String id)
	 * { return storeService.getUserInfo(id); }
	 */
}
