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

	@Override
	public void menuErase(int seqMenu) {
		sqlSession.delete("adminSQL.menuEarase", seqMenu);
	}

	@Override
	public MenuDTO menuUpdateForm(int seqMenu) {
		return sqlSession.selectOne("adminSQL.menuUpdateForm", seqMenu);
	}

	@Override
	public String orderAlert() {
		OrderDTO orderDTO = sqlSession.selectOne("adminSQL.orderAlert");
		System.out.println(orderDTO);
		
		if(orderDTO != null) {
			return "alert";
		}else return "null";
	}
}