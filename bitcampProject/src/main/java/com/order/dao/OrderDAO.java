package com.order.dao;

import java.util.List;
import java.util.Map;

import com.order.bean.OrderDTO;

public interface OrderDAO {

	public Map<String, Object> getOrderMenu(Map<String, Object> map);

	public List<OrderDTO> getCartList(String id);

	public List<OrderDTO> getUserStore(String id);

	public void orderList(Map<String, Object> map);

	public List<OrderDTO> getSelectCartList(Map<String, Object> map);

}
