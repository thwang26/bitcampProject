package com.order.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.order.bean.OrderDTO;

@Repository
@Transactional
public class OrderDAOImpl implements OrderDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public Map<String, Object> getOrderMenu(Map<String, Object> map) {
		return sqlSession.selectOne("orderSQL.getOrderMenu", map);
	}

	@Override
	public List<OrderDTO> getCartList(String id) {
		return sqlSession.selectList("orderSQL.getCartList", id);
	}

	@Override
	public List<OrderDTO> getUserStore(String id) {
		return sqlSession.selectList("orderSQL.getUserStore", id);
	}

	@Override
	public void orderList(Map<String, Object> map) {
		sqlSession.update("orderSQL.orderList", map);
	}

	@Override
	public List<OrderDTO> getSelectCartList(Map<String, Object> map) {
		return sqlSession.selectList("orderSQL.getSelectCartList", map);
	}

}
