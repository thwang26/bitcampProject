package com.menu.dao;

import java.util.List;

import com.menu.bean.CategoryDTO;
import com.menu.bean.MenuDTO;
import com.order.bean.OrderDTO;

public interface MenuDAO {

	public MenuDTO getMenu(int seqMenu);

	public void orderMenu(OrderDTO orderDTO);

	List<CategoryDTO> getCategory();

}
