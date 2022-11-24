package com.menu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.menu.bean.CategoryDTO;
import com.menu.bean.MenuDTO;
import com.menu.service.MenuService;
import com.order.bean.OrderDTO;

@Controller
public class MenuController {
	@Autowired
	private MenuService menuService;

	@GetMapping(value = "/menuDetailsForm")
	public String menuDetailsForm() {
		return "menuDetailsForm";
	}

	@GetMapping(value = "/menuDetails")
	@ResponseBody
	public MenuDTO menuDetails(@RequestParam int seqMenu) {
		return menuService.getMenu(seqMenu);
	}

	// 카테고리 리스트
	@GetMapping("categoryList")
	public String categoryList() {
		return "categoryList";
	}

	@GetMapping(value = "/getCategoryList")
	@ResponseBody
	public List<CategoryDTO> getCategoryList() {

		return menuService.getCategoryList();
	}

	@PostMapping(value = "/orderMenu")
	@ResponseBody
	public void orderMenu(@ModelAttribute OrderDTO orderDTO) {
		menuService.orderMenu(orderDTO);
	}

	@GetMapping(value = "/orderMenuForm")
	public String orderMenuForm() {
		return "orderMenuForm";
	}
}
