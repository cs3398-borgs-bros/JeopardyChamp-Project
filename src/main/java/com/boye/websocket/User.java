package com.boye.websocket;

public class User {

		private final String userID;
		
		public User(final String userID) {
			this.userID = userID;
		}
		
		public String getID() {
			return userID;
		}
}
