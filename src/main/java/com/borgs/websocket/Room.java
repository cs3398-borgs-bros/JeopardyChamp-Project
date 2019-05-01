package com.borgs.websocket;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.websocket.Session;

public class Room {
	private static Room instance = null;
	private String code = null;
	private Session host;
	private List<Session> sessions = new ArrayList<Session>();
	private List<Session> team1 = new ArrayList<Session>();
	private List<Session> team2 = new ArrayList<Session>();

	public Room() {}

	public Room(String c, Session s) {
		this.code = c;
		hostJoin(s);
	}

	public String getCode() {	return code;	}	

	public Session getHost() { return this.host; }

	public void hostJoin(Session session) {
		this.host = session;
	}

	public synchronized void join(Session session) { 
		sessions.add(session); 
	}

	public synchronized void joinTeam1(Session session) throws IOException {
		team1.add(session); 
	}

	public synchronized void joinTeam2(Session session) throws IOException {
		team2.add(session);
	}

	public synchronized void leave(Session session) { 
		sessions.remove(session); 
	}

	public synchronized void sendHostMessage(String message) throws IOException {
		this.host.getBasicRemote().sendText(message);
	}

	public synchronized void sendMessage(String message) throws IOException {
		for (Session session: sessions) {
			if (session.isOpen()) {
				session.getBasicRemote().sendText(message);
			}
		}
	}

	public synchronized void sendTeam1(String message) throws IOException {
		for (Session session: team1) {
			if (session.isOpen()) {
				session.getBasicRemote().sendText(message);
			}
		}
	}

	public synchronized void sendTeam2(String message) throws IOException {
		for (Session session: team2) {
			if (session.isOpen()) {
				session.getBasicRemote().sendText(message);
			}
		}
	}
	
	public synchronized static Room getRoom() {
		if (instance == null) { instance = new Room(); }
		return instance;
	}
}
