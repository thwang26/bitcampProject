package com.admin.dao;

import java.util.List;

import com.menu.bean.MenuDTO;
import com.order.bean.OrderDTO;

public interface AdminDAO {

	public void menuWrite(MenuDTO menuDTO);

	public List<MenuDTO> menuLoad(String categoryNum);

	public void menuErase(int seqMenu);

	public MenuDTO menuUpdateForm(int seqMenu);

	public String orderAlert();

	public void menuUpdate(MenuDTO menuDTO);

	public List<OrderDTO> orderLoad();

	public void orderConfirm(int seqOrder);

	public void orderComplete(int seqOrder);

	public void orderReject(int seqOrder);

	public List<OrderDTO> orderSales(int selectNum);

}
