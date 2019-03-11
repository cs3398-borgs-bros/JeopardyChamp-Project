package com.boye.websocket;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/message-endpoint")
public class MessageEndpoint {
    private Timer timer;
    private List<User> users = new ArrayList<User>();
    int userCon = 0;
    
    @OnOpen
    public void onOpen(Session session) {
    	userCon++;
    	
        System.out.println("Open session " + session.getId());
        
        users.add(new User("Client #" + session.getId()));
        
    }

    @OnMessage
    public void onMessage(String message, final Session session) {
        System.out.println("Session " + session.getId() + " message: " + message);
        if ("GET".equals(message)) {
            timer = new Timer();
            timer.scheduleAtFixedRate(new TimerTask() {
                public void run() {
                    try {
                        String msg = "Message " + UUID.randomUUID();
                        System.out.println(msg);
                        session.getBasicRemote().sendText(msg);
                    } catch (IOException ex) {
                        System.err.println(ex.getMessage());
                    }
                }
            }, 0, 1000);
        } else if ("STOP".equals(message)) {
            timer.cancel();
        }
        
        if("USER".equals(message)) {
        	for(int i = 0; i < userCon; i++) {
        		System.out.println(users.get(i).getID());
        	}
        }
        
    }

    @OnClose
    public void onClose(Session session) {
        timer.cancel();
        System.out.println("Session " + session.getId() + " is closed.");
        
    }
}
