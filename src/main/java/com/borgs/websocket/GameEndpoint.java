package com.borgs.websocket;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import java.util.HashSet;

import javax.websocket.EndpointConfig;
import javax.websocket.OnClose;
//import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.catalina.SessionEvent;

/**
 * @ServerEndpoint gives the relative name for the end point
 */
@ServerEndpoint("/game-endpoint")
public class GameEndpoint {
    private Set<Room> rooms;
    private List<User> users = new ArrayList<User>();
    int userCon = 0;

    /**
     * @OnOpen allows us to intercept the creation of a new session. The session
     *         class allows us to send data to the user.
     * 
     *         This will generate / track user connection. Generating session ID
     */
    @OnOpen
    public void onOpen(Session session, EndpointConfig config) {
        userCon++;
        session.setMaxIdleTimeout(1000*360);
        System.out.println("Open session " + session.getId());
        users.add(new User("C-" + session.getId()));

    }

    /**
     * When a user sends a message to the server, this method will intercept the
     * message and allow us to react to it. For now the message is read as a String.
     */
    @OnMessage
    public void onMessage(final Session session, String message) {

        ObjectMapper mapper = new ObjectMapper();
        GameMessage gamemsg = null;

        System.out.println("Received message:" + message);
        try {
            gamemsg = mapper.readValue(message, GameMessage.class);
            System.out.println("JSON converted to GameMessage");
        } catch (IOException e1) {
            System.out.println(e1.getMessage());
        }

        Map<String, Object> properties = session.getUserProperties();
        System.out.println(properties.values());
		if (gamemsg.getMessageType() == MessageType.HOST) {
			String msgcode = gamemsg.getMessage();
            if (rooms == null) {
                this.rooms = new HashSet<Room>();
                rooms.add(new Room(msgcode));
                System.out.println("Rooms initialied, New room created with code :" + msgcode);
            } 
            else {
                rooms.add(new Room(msgcode));
                System.out.println("New room created with code: " + msgcode);
            }
        }
        else if (gamemsg.getMessageType() == MessageType.JOIN) {
            String msgcode = gamemsg.getMessage();
            if ( rooms == null) {
                //TODO
            }
            else {
                for (Room r : rooms) {
                    if (msgcode == r.getCode()) {
                        System.out.println("FOUND ROOM");
                        r.join(session);
                        System.out.println("User joined room " + msgcode);
                        break;
                    }
                }
            }
        }


        /*System.out.println("Session " + session.getId() + " message: " + message);
        session.getUserProperties();
        if (message.startsWith("GAMEID")) {
           for (User u: users)
           {
               String tempid = "C-" + session.getId();
                if (tempid.equals(u.getID())) {
                    String mes = message.substring(7);
                    u.setSessionID(mes);
                    u.setSession(session);
                    System.out.println("Session " + session.getId() + " saved lobby information as " + mes);
                    break;
                }
           }
           
        } else if (message.startsWith("JOIN")) {
            String[] m = message.split(":");
            boolean check = false;
            for (User u: users) {
                if (m[1].equals(u.getSessionID())) {
                    try {
                        System.out.println("Session " + session.getId() + " found Session" + u.getSession().getId());
                        session.getBasicRemote().sendText("JOINED:" + m[2] + ":" + m[1]);
                        u.getSession().getBasicRemote().sendText("JOINED:" + m[2] + ":" + m[1]);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    check = true;
                    break;
                }
            }
            if (check == false) {
                try {
                    session.getBasicRemote().sendText("NOTFOUND");
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        } else if("USER".equals(message)) {
        	for(int i = 0; i < userCon; i++) {
        		System.out.println(users.get(i).getID());
        	}
        }*/
        
    }

    /**
     * The user closes the connection.
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

    //@OnError public void onError(Session session) { }
}
