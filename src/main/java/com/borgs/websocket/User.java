package com.borgs.websocket;

import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;

import javax.websocket.Session;

public class User {

		private final String userID;
		private String userName;
		private String roomJoined;
		private Session session;
		private Timer ping;
		
		public User(final String userID, Session s) {
			this.userID = userID;
			this.session = s;
			this.ping = new Timer();
			this.ping.scheduleAtFixedRate(new TimerTask() {
				public void run() {
					try {
						String msg = "PING";
						session.getBasicRemote().sendText(msg);
					}   catch (IOException ex) {
						System.err.println("PING error :" + ex.getMessage());
					}
				}
			}, 40000, 40000);
		}
		
		public String getID() {	return userID; }

		public String getName() { return userName; }

		public String getRoomJoined() { return roomJoined; }

		public Session getSession() { return session; }

		public void setRoomJoined(String r) { this.roomJoined = r; }

		public void setName(String n) { this.userName = n; }

		public void setSession(Session s) { this.session = s; }

		public void cancelPing() { this.ping.cancel(); }
}
