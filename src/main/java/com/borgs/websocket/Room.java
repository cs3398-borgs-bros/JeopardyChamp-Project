package com.borgs.websocket;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.websocket.Session;

public class Room {
	private static Room instance = null;
	private String code = null;
	private List<Session> sessions = new ArrayList<Session>();

	public Room() {}

	public Room(String c, Session s) {
		this.code = c;
		join(s);
	}

	public String getCode() {	return code;	}	

	public synchronized void join(Session session) { 
		sessions.add(session); 
	}

	public synchronized void leave(Session session) { 
		sessions.remove(session); 
	}

	public synchronized void sendMessage(String message) {
		for (Session session: sessions) {
			if (session.isOpen()) {
				try { session.getBasicRemote().sendText(message); }
				catch (IOException e) { e.printStackTrace(); }
			}
		}
	}
	
	public synchronized static Room getRoom() {
		if (instance == null) { instance = new Room(); }
		return instance;
	}
}
