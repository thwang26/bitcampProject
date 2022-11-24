package com.menu.dao;

import com.menu.bean.MenuDTO;
import com.order.bean.OrderDTO;

public interface MenuDAO {

	public MenuDTO getMenu(int seqMenu);

	public void orderMenu(OrderDTO orderDTO);

}
