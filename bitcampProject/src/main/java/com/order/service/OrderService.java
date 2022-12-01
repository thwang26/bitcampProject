package com.order.service;

import java.util.List;
import java.util.Map;

import com.order.bean.KakaoPayApprovalVO;
import com.order.bean.OrderDTO;

public interface OrderService {

	public Map<String, Object> getOrderMenu(Map<String, Object> map);

	public String kakaoPayReady(Map<String,Object> map);
	
	public KakaoPayApprovalVO kakaoPayInfo(String pg_token);

	public List<OrderDTO> getCartList(String id);

	public List<OrderDTO> getUserStore(String id);

	public void orderList(Map<String, Object> map);

	public List<OrderDTO> getSelectCartList(Map<String, Object> map);

}
