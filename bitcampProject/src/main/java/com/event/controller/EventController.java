package com.event.controller;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Component
@Controller
public class EventController {

	
	@RequestMapping(value="/eventBoard",method=RequestMethod.GET)
	public String eventBoard() {
		return "/event/eventBoard";
	}
	@RequestMapping(value="/eventDelete",method=RequestMethod.GET)
	public String eventDeletet() {
		return "/event/eventDeletet";
	}
	@RequestMapping(value="/eventUpdate",method=RequestMethod.GET)
	public String eventUpdate() {
		return "/event/eventUpdate";
	}
	@RequestMapping(value="/eventList",method=RequestMethod.GET)
	public String eventList() {
		return "/event/eventList";
	}
}
