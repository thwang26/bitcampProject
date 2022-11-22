package com.admin.dao;


import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.order.bean.OrderDTO;


@Repository
@Transactional//commit과 close 담당
public class AdminDAOMyBatis implements AdminDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public OrderDTO getOrder() {
		return sqlSession.selectOne("adminSQL.getOrder");
	}
	
	
	
}