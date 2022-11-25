package com.event.dao;

import java.util.List;

import com.event.bean.EventDTO;

public interface EventDAO {
	
	public List<EventDTO> getEventList();
}
