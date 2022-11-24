package com.menu.service;

import com.menu.bean.MenuDTO;
import com.order.bean.OrderDTO;

public interface MenuService {

	public MenuDTO getMenu(int seqMenu);

	public void orderMenu(OrderDTO orderDTO);

}
