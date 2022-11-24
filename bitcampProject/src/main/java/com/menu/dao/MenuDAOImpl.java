package com.menu.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.menu.bean.CategoryDTO;
import com.menu.bean.MenuDTO;
import com.order.bean.OrderDTO;

@Repository
@Transactional
public class MenuDAOImpl implements MenuDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MenuDTO getMenu(int seqMenu) {
		return sqlSession.selectOne("menuSQL.getMenu", seqMenu); //mapper만들고, spring폴더, spring.conf파일 가져와서 완성하기 root-context설정도!
	}

	@Override
	public void orderMenu(OrderDTO orderDTO) {
		sqlSession.insert("menuSQL.orderMenu", orderDTO);
		
	}

	@Override
	public List<CategoryDTO> getCategory() {
		return sqlSession.selectList("menuSQL.getCategoryList");
	}

}
