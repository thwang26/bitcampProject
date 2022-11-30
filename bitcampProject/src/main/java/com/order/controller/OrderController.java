package com.order.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.order.bean.OrderDTO;
import com.order.service.OrderService;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	@GetMapping(value="/getOrderMenu")
	@ResponseBody
	public Map<String, Object> getOrderMenu(@RequestParam String id, @RequestParam int storeNum) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("storeNum", storeNum);
		return orderService.getOrderMenu(map);
	}
	
	@PostMapping(value="/kakaoPay")
	@ResponseBody
	public String kakaoPay(@RequestParam Map<String,Object> map) {
		System.out.println("map = " + map.get("seqOrder"));
		return orderService.kakaoPayReady(map);
	}
	
	@GetMapping(value="/kakaoPaySuccess")
	public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
		System.out.println("kakaoPaySuccess pg_token : " + pg_token);
		
		model.addAttribute("info", orderService.kakaoPayInfo(pg_token));
	}
	
}
