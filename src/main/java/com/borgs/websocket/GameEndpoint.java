package com.borgs.websocket;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import com.fasterxml.jackson.databind.ObjectMapper;

/** 
 * @ServerEndpoint gives the relative name for the end point
 */
@ServerEndpoint("/game-endpoint")
public class GameEndpoint {
    private static Set<Room> rooms = new HashSet<Room>();
    private List<User> users = new ArrayList<User>();
    int userCon = 0;
    
    /**
     * @OnOpen allows us to intercept the creation of a new session.
     */
    @OnOpen
    public void onOpen(Session session) {
        userCon++;
        session.setMaxIdleTimeout(-1);
        System.out.println("Open session " + session.getId()); 
        users.add(new User("C-" + session.getId(), session));
    }

    /**
     * @OnMessage
     */
    @OnMessage
    public void onMessage(String message, final Session session) {
        
        ObjectMapper mapper = new ObjectMapper();
        GameMessage gamemsg = null;

        //Converts message to GameMessage object
        System.out.println("Session " + session.getId() + " message: " + message);
        try {
            gamemsg = mapper.readValue(message, GameMessage.class);
            System.out.println("JSON converted to GameMessage");
        } catch (IOException e1) {
            System.out.println(e1.getMessage());
        }
        
        //If HOST game
		if (gamemsg.getMessageType() == MessageType.HOST) {
            //Map<String, Object> properties = session.getUserProperties();
			String msg = gamemsg.getMessage();
            rooms.add(new Room(msg, session));
            System.out.println("New room created with code: " + msg);
        }
        //If JOIN game
        else if (gamemsg.getMessageType() == MessageType.JOIN) {
            String[] msg = gamemsg.getMessage().split(":");
            Map<String, Object> properties = session.getUserProperties();
            properties.put("name", msg[0]);
            System.out.println(msg[0] + " attempting to join room " + msg[1]);
            if ( rooms.size() > 0) {
                for (Room r : rooms) {
                    System.out.println("For Loop: Room " + r.getCode());
                    if (msg[1].equalsIgnoreCase(r.getCode())) {
                        System.out.println("FOUND ROOM");
                        r.join(session);
                        System.out.println(msg[0] + " joined room " + msg[1]);
                        try {
                            r.sendMessage("JOIN:" + msg[0] + " has joined." + "\n");
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        break;
                    }
                }
            }
            else {
                System.out.println("no rooms exist");
            }
        }
        //If BROADCAST messagetype
        else if(gamemsg.getMessageType() == MessageType.BROADCAST) {

        }
        
    }

    /**
     * @OnClose The user closes the connection.
     * Note: you can't send messages to the client from this method
     */
    @OnClose
    public void onClose(Session session) {
        
        for (int i = 0; i < users.size(); i++) {
            String temp = "C-" + session.getId();
            if (temp.equals(users.get(i).getID())) {
                users.remove(i);
                break;
            }
        }
        System.out.println("Session " + session.getId() + " is closed.");
        
    }
}
