package com.bitcafe.othercontroller;


import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
}
