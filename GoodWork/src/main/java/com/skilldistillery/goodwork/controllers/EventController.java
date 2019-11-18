package com.skilldistillery.goodwork.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.goodwork.data.EventDAO;
import com.skilldistillery.goodwork.data.UserDAO;
import com.skilldistillery.goodwork.entities.Event;
import com.skilldistillery.goodwork.entities.Location;
import com.skilldistillery.goodwork.entities.Organization;
import com.skilldistillery.goodwork.entities.User;

@Controller
public class EventController {

	@Autowired
	private EventDAO eventDAO;
	@Autowired
	private UserDAO userDAO;
//	private int eventId;

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index(Model model) {
		return "index";
	}

	@RequestMapping(path = "getEvent.do", method = RequestMethod.GET)
	public String getEvent(Model model, int id) {
		model.addAttribute("event", eventDAO.findEventById(id));
		return "events/event";

	}

	@RequestMapping(path = "eventKeyword.do")
	public String findByKeyword(@Valid String keyword, Model model) {
		List<Event> eventSearch = eventDAO.findByKeyword(keyword);
		model.addAttribute("eventSearch", eventSearch);
		return "result";
	}

	@RequestMapping(path = "getEventList.do", method = RequestMethod.GET)
	public String eventList(Model model) {
		System.err.println("getEventList.do in controller");
		List<Event> events = eventDAO.findAll();
		System.err.println(events);
		model.addAttribute("eventList", events);
		return "events/eventList";
	}

	@RequestMapping(path = "createEvent.do", method = RequestMethod.POST)
	public String addEvent(Event event, Model model, Location location, HttpSession session) {
		System.out.println(event);
		System.out.println(location);
		// session code for create event
		User newUser = (User) session.getAttribute("newUser");
		model.addAttribute("newEvent", eventDAO.addEvent(event, newUser));
		newUser = userDAO.getUserById(newUser.getId());
		session.removeAttribute("newUser");
		session.setAttribute("newUser", newUser);

		return "result";
	}

	@RequestMapping(path = "createEventForm.do", method = RequestMethod.GET)
	public String addEventForm() {
		return "events/createEvent";
	}

	@RequestMapping(path = "updateEvent.do", method = RequestMethod.POST)
	public String updateEvent(Model model, Event updatedEvent, Integer id) {
		System.err.println("In controller************" + id + " " + updatedEvent);
		Event originalEventForDate = eventDAO.findEventById(id);
		updatedEvent.setDateCreated(originalEventForDate.getDateCreated()); // passing date issues works
		System.out.println("GIVE ME THE DATESSSSS" + originalEventForDate);
		System.err.println();
//		LocalDate date = updatedEvent.getDateCreated();
//		updatedEvent.setDateCreated(date);
		Event event = eventDAO.updateEvent(updatedEvent, id);
		model.addAttribute("updateEvent", event);
		return "events/event";
	}

	@RequestMapping(path = "deleteEvent.do", method = RequestMethod.POST)
	public String deleteEvent(int id, Event event) {
		eventDAO.deleteEvent(id, event);
		return "index";

	}

}
