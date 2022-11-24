package com.menu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.menu.bean.MenuDTO;
import com.menu.dao.MenuDAO;
import com.order.bean.OrderDTO;

@Service
public class MenuServiceImpl implements MenuService {
	@Autowired
	private MenuDAO menuDAO;

	@Override
	public MenuDTO getMenu(int seqMenu) {
		return menuDAO.getMenu(seqMenu);
	}

	@Override
	public void orderMenu(OrderDTO orderDTO) {
		menuDAO.orderMenu(orderDTO);	
	}

}
