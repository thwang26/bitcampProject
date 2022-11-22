package com.menu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.menu.bean.MenuDTO;
import com.menu.service.MenuService;

@Controller
public class MenuController {
	@Autowired
	private MenuService menuService;
	
	@GetMapping(value="/menuDetailsForm")
	public String menuDetailsForm() {
		return "menuDetailsForm";
	}
	
	@GetMapping(value="/menuDetails")
	@ResponseBody
	public MenuDTO menuDetails(@RequestParam int seq) {
		return menuService.getMenu(seq);
	}
}
