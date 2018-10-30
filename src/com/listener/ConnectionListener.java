package com.listener;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


/**
 * Application Lifecycle Listener implementation class ConnectionListener
 *
 */
@WebListener
public class ConnectionListener implements ServletContextListener {

    /**
     * Default constructor. 
     */

	Connection con;
    public ConnectionListener() {
        // TODO Auto-generated constructor stub
    }
    
    //To establish the connection and persist the connection object for various database operations
    
    public void contextInitialized(ServletContextEvent ctx)  { 
        // TODO Auto-generated method stub
    	String driver=ctx.getServletContext().getInitParameter("driver");
    	String url=ctx.getServletContext().getInitParameter("url");
    	String username=ctx.getServletContext().getInitParameter("username");
    	String password=ctx.getServletContext().getInitParameter("password");
    	
    	try{
			
			Class.forName(driver);
			con= DriverManager.getConnection(url,username,password);
			ctx.getServletContext().setAttribute("DbConnection",con);
			
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
	}
	
	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent ctx)  { 
         // TODO Auto-generated method stub
    	try
    	{
    		con=(Connection) ctx.getServletContext().getAttribute("DbConnection");
        	con.close();
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
   
}
