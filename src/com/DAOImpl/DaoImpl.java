package com.DAOImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DAOInterfaces.DaoInterface;
import com.Exceptions.*;
import com.beans.Location;
import com.beans.Login;
import com.beans.MenuItem;
import com.beans.User;

public class DaoImpl implements DaoInterface {
	User user;
	Login login;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	public DaoImpl(Connection con)
	{	
		this.con=con;
	}
	
	//to insert the user fields in database after signUp
	@Override
	public boolean insertUser(User user) throws InputException{
		// TODO Auto-generated method stub
		try {
			pstmt=con.prepareStatement("insert into user values(?,?,?,?,?,?)");
			
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2,user.getEmail());
			pstmt.setString(3,user.getNumber());
			pstmt.setString(4,user.getAddress());
			pstmt.setString(5,user.getSecurity_ques());
			pstmt.setString(6,user.getSecurity_ans());

			int count=pstmt.executeUpdate();
			if(count>0)
				return true;
			return false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		throw new InputException("Input Exception");
	}
	
	//to insert the login details in table after user profile created
	@Override
	public boolean insertLogin(Login login) throws InputException{
		// TODO Auto-generated method stub
		try {
			pstmt=con.prepareStatement("insert into login values(?,?)");
			
			pstmt.setString(1,login.getUsername());
			pstmt.setString(2,login.getPassword());
			int count=pstmt.executeUpdate();
			if(count>0)
				return true;
			return false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		throw new InputException("Service Exception");
	}
	
	//to confirm the login 
	@Override
	public boolean login(Login login) throws ServiceException{
		// TODO Auto-generated method stub
		try 
		{
			pstmt=con.prepareStatement("Select * from login");
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				if(rs.getString(1).equals(login.getUsername()) && rs.getString(2).equals(login.getPassword()))
				{
					
					return true;
				
				}
			}
			return false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		throw new ServiceException("Service Exception");
	}
	
	//to get the location array from the database
	@Override
	public ArrayList<Location> getLocation() throws OutputException{
		// TODO Auto-generated method stub
		ArrayList<Location> locationList=new ArrayList<Location>();
		
		try 
		{	
			pstmt=con.prepareStatement("Select * from location");
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				Location location=new Location();
				location.setId(rs.getInt(1));
				location.setLocation(rs.getString(2));
				location.setImage(rs.getString(3));
				locationList.add(location);
			}
		}
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return locationList ;
	}
	
	//to get different menu items from database
	@Override
	public ArrayList<MenuItem> getMenuItems() throws OutputException{
		// TODO Auto-generated method stub
		ArrayList<MenuItem> arr=new ArrayList<MenuItem>();
		
		try 
		{	
			pstmt=con.prepareStatement("Select * from menu");
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				MenuItem menu=new MenuItem();
				menu.setId(rs.getInt(1));
				menu.setName(rs.getString(2));
				menu.setDescription(rs.getString(3));
				menu.setPrice(rs.getFloat(4));
				menu.setImage(rs.getString(5));
				arr.add(menu);
			}
		}
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
	
	
}
