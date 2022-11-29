package com.bitcafe.othercontroller;


import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Component
@Controller
public class OtherController {
	
	
	@RequestMapping(value="/orderList", method=RequestMethod.GET)
	public String orderList() {
		return "/others/orderList";
	}
	@RequestMapping(value="/memOut", method=RequestMethod.GET)
	public String memOut() {
		return "/others/memOut";
	}
	@RequestMapping(value="/updateMem", method=RequestMethod.GET)
	public String updateMem() {
		return "/others/updateMem";
	}
	@RequestMapping(value="/DetailView", method=RequestMethod.GET)
	public String DetailView() {
		return "/others/DetailView";
	}
}
