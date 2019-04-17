package com.borgs.websocket;

import javax.websocket.Session;

public class User {

		private final String userID;
		private String userName;
		private String sessionID;
		private Session session;
		
		public User(final String userID) {
			this.userID = userID;
		}
		
		public String getID() {
			return userID;
		}

		public String getName() {
			return userName;
		}

		public String getSessionID() {
			return sessionID;
		}

		public Session getSession() {
			return session;
		}

		public void setSessionID(String s) {
			this.sessionID = s;
		}

		public void setSession(Session s) {
			this.session = s;
		}
}
