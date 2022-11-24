package com.menu.service;

import java.util.List;

import com.menu.bean.CategoryDTO;
import com.menu.bean.MenuDTO;

public interface MenuService {

	MenuDTO getMenu(int seqMenu);

	List<CategoryDTO> getCategoryList();

}
