package com.borgs.websocket;

import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

/** 
 * @ServerEndpoint gives the relative name for the end point
 * This will be accessed via ws://localhost:8080/EchoChamber/echo
 * Where "localhost" is the address of the host,
 * "EchoChamber" is the name of the package
 * and "echo" is the address to access this class from the server
 */
@ServerEndpoint("/message-endpoint")
public class MessageEndpoint {

    private Timer timer;

    /**
     * @OnOpen allows us to intercept the creation of a new session.
     * The session class allows us to send data to the user.
     * In the method onOpen, we'll let the user know that the handshake was 
     * successful.
     */
    @OnOpen
    public void onOpen(Session session) {
        System.out.println("Open session " + session.getId());
    }

    /**
     * When a user sends a message to the server, this method will intercept the message
     * and allow us to react to it.
     */
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
        
    }

    /**
     * The user closes the connection.
     * Note: you can't send messages to the client from this method
     */
    @OnClose
    public void onClose(Session session) {
        timer.cancel();
        System.out.println("Session " + session.getId() + " is closed.");
    }
}
