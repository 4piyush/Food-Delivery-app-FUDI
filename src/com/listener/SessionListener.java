package com.listener;

import java.util.ArrayList;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.beans.Cart;

/**
 * Application Lifecycle Listener implementation class SessionListener
 *
 */
@WebListener
public class SessionListener implements HttpSessionListener {

    /**
     * Default constructor. 
     */
    public SessionListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    
    //session creation listener to create a new session.
    public void sessionCreated(HttpSessionEvent event)  { 
         // TODO Auto-generated method stub
    	HttpSession session=event.getSession();
    	System.out.println("session listener active");
    	session.setMaxInactiveInterval(600);//to set interval period for the session
    	
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent event)  { 
         // TODO Auto-generated method stub
    	HttpSession session=event.getSession();
		ArrayList<Cart>cartList=(ArrayList<Cart>)session.getAttribute("cartList");
    	System.out.println("session is destroyed");
    	
    	
    }
	
}
