package com.menu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.menu.bean.CategoryDTO;
import com.menu.bean.MenuDTO;
import com.menu.dao.MenuDAO;

@Service
public class MenuServiceImpl implements MenuService {
	@Autowired
	private MenuDAO menuDAO;

	@Override
	public MenuDTO getMenu(int seqMenu) {
		return menuDAO.getMenu(seqMenu);
	}

	@Override
	public List<CategoryDTO> getCategoryList() {
		return menuDAO.getCategory();
	}

}
