package com.admin.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.menu.bean.MenuDTO;
import com.order.bean.OrderDTO;


@Repository
@Transactional//commit과 close 담당
public class AdminDAOImpl implements AdminDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public OrderDTO getOrder() {
		return sqlSession.selectOne("adminSQL.getOrder");
	}

	@Override
	public void menuWrite(MenuDTO menuDTO) {
		sqlSession.insert("adminSQL.menuWrite", menuDTO);
	}

	@Override
	public List<MenuDTO> menuLoad(String categoryNum) {
		return sqlSession.selectList("adminSQL.menuLoad", categoryNum);
	}
	
	
	
}