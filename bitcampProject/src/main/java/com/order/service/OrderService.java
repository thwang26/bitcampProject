package com.order.service;

import java.util.Map;

import com.order.bean.KakaoPayApprovalVO;
import com.order.bean.OrderDTO;

public interface OrderService {

	public Map<String, Object> getOrderMenu(Map<String, Object> map);

	public String kakaoPayReady(OrderDTO orderDTO);
	
	public KakaoPayApprovalVO kakaoPayInfo(String pg_token);

}
