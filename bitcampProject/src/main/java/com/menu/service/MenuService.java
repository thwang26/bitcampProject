package com.menu.service;

import java.util.List;

import com.menu.bean.CategoryDTO;
import com.menu.bean.MenuDTO;
import com.order.bean.OrderDTO;

public interface MenuService {

	public MenuDTO getMenu(int seqMenu);

	public List<CategoryDTO> getCategoryList();
	
	public void orderMenu(OrderDTO orderDTO);

}
