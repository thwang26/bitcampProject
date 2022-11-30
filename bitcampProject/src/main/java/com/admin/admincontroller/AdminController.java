package com.admin.admincontroller;


import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

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
import org.springframework.web.multipart.MultipartFile;

import com.admin.service.AdminService;
import com.menu.bean.MenuDTO;
import com.order.bean.OrderDTO;

@Component
@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value="/admin")
	public String index() {
		return "/admin/admin";
	}
	
	@RequestMapping(value="/orderMenuList")
	public String orderList() {
		return "/admin/orderMenuList";
	}
	
	@RequestMapping(value="/orderCount")
	public String orderCount() {
		return "/admin/orderCount";
	}
	
	@RequestMapping(value="/menuInsert")
	public String menuInsert() {
		return "/admin/menuInsert";
	}
	
	@RequestMapping(value="/menuDelete", method=RequestMethod.GET)
	public String menuDelete() {
		return "/admin/menuDelete";
	}
	
	@RequestMapping(value="/menuEdit", method=RequestMethod.GET)
	public String menuEdit() {
		return "/admin/menuEdit";
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
	
	@RequestMapping(value="/menuUpdate", method=RequestMethod.GET)
	@ResponseBody
	public void menuUpdate(@ModelAttribute MenuDTO menuDTO) {
		adminService.menuUpdate(menuDTO);
	}
	
	@RequestMapping(value="/orderAlert", method=RequestMethod.GET)
	@ResponseBody
	public String orderAlert() {
		return adminService.orderAlert();
	}
	
	@RequestMapping(value="/orderLoad", method=RequestMethod.GET)
	@ResponseBody
	public List<OrderDTO> orderLoad() {
		return adminService.orderLoad();
	}
	
	@RequestMapping(value="/orderConfirm", method=RequestMethod.GET)
	@ResponseBody
	public void orderConfirm(@RequestParam int seqOrder) {
		adminService.orderConfirm(seqOrder);
	}
	
	@RequestMapping(value="/orderComplete", method=RequestMethod.GET)
	@ResponseBody
	public void orderComplete(@RequestParam int seqOrder) {
		adminService.orderComplete(seqOrder);
	}
	
	@RequestMapping(value="/orderReject", method=RequestMethod.GET)
	@ResponseBody
	public void orderReject(@RequestParam int seqOrder) {
		adminService.orderReject(seqOrder);
	}
	
	@RequestMapping(value="/orderSales", method=RequestMethod.GET)
	@ResponseBody
	public List<OrderDTO> orderSales(@RequestParam int selectNum) {
		return adminService.orderSales(selectNum);
	}
	
	@RequestMapping(value="/adminLogout")
	@ResponseBody
	public void adminLogout(HttpSession session) {
		System.out.println("로그아웃");
		session.invalidate();
	}
	
//	@PostMapping(value="/upload")
//	@ResponseBody
//	public String upload(@RequestParam MultipartFile img) {
//		//가상폴더
//		String filePath = "/bitcafe/resources/img/menuImage";
//		String fileName = img.getOriginalFilename();
//		
//		File file = new File(filePath, fileName);
//		
//		System.out.println(file);
//		try {
//			//FileCopyUtils.copy(img.getInputStream(), new FileOutputStream(file)); //복사
//			img.transferTo(file);
//			
//		} catch (IOException e) {
//			e.printStackTrace();
//		} 
//		return "file";
//	}
}
