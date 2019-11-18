package com.skilldistillery.goodwork.data;

import java.util.List;

import com.skilldistillery.goodwork.entities.Event;
import com.skilldistillery.goodwork.entities.User;

public interface EventDAO {

	public Event findEventById(int id);

	public List<Event> findAll();

	public List<Event> findByKeyword(String keyword);

	public Event addEvent(Event event, User user);

	public Event updateEvent(Event event, int eventId);

	public boolean deleteEvent(int id, Event event);

}
