package com.admin.admincontroller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.admin.service.AdminService;
import com.menu.bean.MenuDTO;
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
		return "/admin/orderMenuList";
	}
	@RequestMapping(value="/orderCount", method=RequestMethod.GET)
	public String orderCount() {
		return "/admin/orderCount";
	}
	@RequestMapping(value="/menuInsert", method=RequestMethod.GET)
	public String menuInsert() {
		return "/admin/menuInsert";
	}
	@RequestMapping(value="/menuEdit", method=RequestMethod.GET)
	public String menuEdit() {
		return "/admin/menuEdit";
	}
	@RequestMapping(value="/getOrder", method=RequestMethod.GET)
	@ResponseBody
	public OrderDTO getOrder() {
		return adminService.getOrder();
	}
	@RequestMapping(value="/menuWrite", method=RequestMethod.POST)
	@ResponseBody
	public void menuWrite(@ModelAttribute MenuDTO menuDTO) {
		adminService.menuWrite(menuDTO);
	}
	@RequestMapping(value="/menuLoad", method=RequestMethod.GET)
	@ResponseBody
	public List<MenuDTO> menuLoad(@RequestParam String categoryNum) {
		return adminService.menuLoad(categoryNum);
	}
	@RequestMapping(value="/menuErase", method=RequestMethod.GET)
	@ResponseBody
	public void menuErase(@RequestParam int seqMenu) {
		adminService.menuErase(seqMenu);
	}
	@RequestMapping(value="/menuUpdateForm", method=RequestMethod.GET)
	@ResponseBody
	public MenuDTO menuUpdateForm(@RequestParam int seqMenu) {
		return adminService.menuUpdateForm(seqMenu);
	}
	@RequestMapping(value="/orderAlert", method=RequestMethod.GET)
	@ResponseBody
	public String orderAlert() {
		return adminService.orderAlert();
	}
	
}
