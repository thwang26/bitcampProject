package com.menu.dao;

import java.util.List;

import com.menu.bean.CategoryDTO;
import com.menu.bean.MenuDTO;

public interface MenuDAO {

	MenuDTO getMenu(int seq);

	List<CategoryDTO> getCategory();

}
