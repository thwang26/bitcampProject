package com.admin.admincontroller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.admin.service.AdminService;
import com.order.bean.OrderDTO;

@Component
@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String index() {
		return "/admin/admin";
	}
	@RequestMapping(value="/orderMenuList", method=RequestMethod.GET)
	public String orderList() {
		return "/admin/orderList";
	}
	@RequestMapping(value="/orderCount", method=RequestMethod.GET)
	public String orderCount() {
		return "/admin/orderCount";
	}
	@RequestMapping(value="/menuInsert", method=RequestMethod.GET)
	public String menuInsert() {
		return "/admin/menuInsert";
	}
	@RequestMapping(value="/menuDelete", method=RequestMethod.GET)
	public String menuDelete() {
		return "/admin/menuDelete";
	}
	@RequestMapping(value="/getOrder", method=RequestMethod.GET)
	@ResponseBody
	public OrderDTO getOrder() {
		return adminService.getOrder();
	}
	
}
