package com.order.service;

import java.util.Map;

import org.apache.commons.collections4.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.order.bean.OrderDTO;
import com.order.dao.OrderDAO;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDAO;

	@Override
	public Map<String, Object> getOrderMenu(Map<String, Object> map) {
		return orderDAO.getOrderMenu(map);
	}

}
