package com.admin.dao;

import java.util.List;

import com.menu.bean.MenuDTO;
import com.order.bean.OrderDTO;

public interface AdminDAO {

	public OrderDTO getOrder();

	public void menuWrite(MenuDTO menuDTO);

	public List<MenuDTO> menuLoad(String categoryNum);

	public void menuErase(int seqMenu);

	public MenuDTO menuUpdateForm(int seqMenu);

	public String orderAlert();

}
