package com.skilldistillery.goodwork.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.goodwork.data.MessageDAO;
import com.skilldistillery.goodwork.entities.MessageBoard;

@Controller
public class MessageController {
	
	@Autowired
	private MessageDAO messDAO;
	
	@RequestMapping(path = "findMessagesByEventId.do", method = RequestMethod.GET)
	public String diplayMessages(int id, Model model) {
		if (messDAO.findMessagesByEventId(id) == null) {
			model.addAttribute("oops", "Looks like something went wrong. Sorry about that mistake.");
			return "fail";
		} else {

			model.addAttribute("messages", messDAO.findMessagesByEventId(id));

			return "events/event";
		}
	}
	
	@RequestMapping(path="reply.do", method=RequestMethod.POST)
		public String reply(String content, int id, Model model) {
			MessageBoard message = new MessageBoard();
			message.setContent(content);
			message = messDAO.addNewMessage(message, id);
			model.addAttribute("message", message);
			
			return "events/event";
		}
	}


