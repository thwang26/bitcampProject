package com.event.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.event.bean.EventDTO;
import com.event.dao.EventDAO;

@Service
public class EventServiceImpl implements EventService {
	@Autowired
	private EventDAO eventDAO;
	
	@Override
	public List<EventDTO> getEventList() {
		// TODO Auto-generated method stub
		return eventDAO.getEventList();
	}

	
}
