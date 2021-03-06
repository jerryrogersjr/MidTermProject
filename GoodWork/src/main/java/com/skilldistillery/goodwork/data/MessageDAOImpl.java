package com.skilldistillery.goodwork.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.goodwork.entities.Event;
import com.skilldistillery.goodwork.entities.MessageBoard;
import com.skilldistillery.goodwork.entities.User;

@Service
@Transactional
public class MessageDAOImpl implements MessageDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<MessageBoard> findMessagesByEventId(int id) {
		String sql = "select m from MessageBoard m where m.event.id= :id";
		List<MessageBoard> messages = em.createQuery(sql, MessageBoard.class).setParameter("id", id).getResultList();
		
		return messages;
	}
	
	@Override
	public MessageBoard addNewMessage(MessageBoard message, int id) {
		User user = em.find(User.class, message.getUser().getId());
		Event event = em.find(Event.class, id);
		
		message.setUser(user);
		message.setEvent(message.getEvent());
		event.addMessageBoard(message);
		user.addMessageBoard(message);
		em.persist(user);
		em.persist(event);
		em.persist(message);
		em.flush();
		return message;

	}

}
