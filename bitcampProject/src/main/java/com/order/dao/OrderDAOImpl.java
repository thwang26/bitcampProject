package com.order.dao;

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

}
