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
    public void onMessage(String message, final Session session) throws IOException {
        
        ObjectMapper mapper = new ObjectMapper();
        GameMessage gamemsg = null;

        //Converts message to GameMessage object
        System.out.println("Session " + session.getId() + " message: " + message);
        gamemsg = mapper.readValue(message, GameMessage.class);
        System.out.println("JSON converted to GameMessage");
        
        //If HOST game
		if (gamemsg.getMessageType() == MessageType.HOST) {
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
                boolean found = false;
                for (Room r : rooms) {
                    System.out.println("For Loop: Room " + r.getCode());
                    if (msg[1].equalsIgnoreCase(r.getCode())) {
                        found = true;
                        r.join(session);
                        for (User u : users)
                        {
                            if (u.getSession().getId() == session.getId()) {
                                u.setName(msg[0]);
                                u.setRoomJoined(msg[1]);
                                break;
                            }
                        }
                        System.out.println(msg[0] + " joined room " + msg[1]);
                        r.sendHostMessage("HOST:" + msg[0] + " has joined." + "\n");
                        r.sendMessage("JOIN:" + msg[0] + " has joined." + "\n");
                        break;
                    }
                }

                if (!found) {
                    session.getBasicRemote().sendText("ERROR:" + "Room not found.");
                }

            }
            else {
                session.getBasicRemote().sendText("ERROR:" + "Room not found.");
            }
        }
        //If TEAM messagetype
        else if(gamemsg.getMessageType() == MessageType.TEAM) {
            String msg = gamemsg.getMessage();
            for (User u : users) {
                if (u.getSession().getId() == session.getId()) {
                    System.out.println("Found session");
                    for (Room r : rooms) { 
                        if (u.getRoomJoined().equalsIgnoreCase(r.getCode())) {
                            System.out.println("Found room");
                            if(msg.equals("1")) {
                                r.joinTeam1(u.getSession());
                            }
                            else if(msg.equals("2")) {
                                r.joinTeam2(u.getSession());
                            }
                            r.sendHostMessage("TEAM:" + msg + ":" +u.getName());
                            break;
                        }
                    }
                    break;
                }
            }
        }
        //If BROADCAST
        else if(gamemsg.getMessageType() == MessageType.BROADCAST) {
            String msg = gamemsg.getMessage();
            if (msg.equals("START")) {
                for (Room r : rooms) { 
                    if (session.getId() == r.getHost().getId()){
                        System.out.println("Host found room, starting game");
                        r.sendMessage("START");
                    }
                }   
            } 
            else {
                for (Room r : rooms) { 
                    if (session.getId() == r.getHost().getId()){
                        System.out.println("Host found room, starting game");
                        r.sendMessage("QUESTIONS:" + msg );
                    }
                } 
            }
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
