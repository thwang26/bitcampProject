package com.event.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.event.bean.EventDTO;
@Repository
@Transactional
public class EventDAOMyBatis implements EventDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<EventDTO> getEventList() {
		
		return sqlSession.selectList("eventSQL.getEventList");
	}

	

}
