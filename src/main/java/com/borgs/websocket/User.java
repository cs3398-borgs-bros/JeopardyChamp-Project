package com.borgs.websocket;

import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;

import javax.websocket.Session;

public class User {

		private final String userID;
		private String userName;
		private String sessionID;
		private Session session;
		private Timer ping;
		
		public User(final String userID, Session s) {
			this.userID = userID;
			this.session = s;
			this.ping.scheduleAtFixedRate(new TimerTask() {
				public void run() {
					try {
						String msg = "PING";
						session.getBasicRemote().sendText(msg);
					}   catch (IOException ex) {
						System.out.println(ex.getMessage());
					}
				}
			}, 0, 40000);
		}
		
		public String getID() {	return userID; }

		public String getName() { return userName; }

		public String getSessionID() { return sessionID; }

		public Session getSession() { return session; }

		public void setSessionID(String s) { this.sessionID = s; }

		public void setSession(Session s) { this.session = s; }
}
