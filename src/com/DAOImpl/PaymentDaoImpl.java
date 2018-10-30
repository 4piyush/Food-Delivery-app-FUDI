package com.DAOImpl;

import com.beans.Card;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.Exceptions.*;

import com.DAOInterfaces.PaymentDaoInterface;

public class PaymentDaoImpl implements PaymentDaoInterface {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	public PaymentDaoImpl(Connection con)
	{	
		this.con=con;
	}
	
	//to confirm card details
	@Override
	public boolean pay(Card card) throws InputException {
		// TODO Auto-generated method stub
		try 
		{
			pstmt=con.prepareStatement("Select * from card");
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				if(rs.getInt(1)==card.getNumber() && rs.getInt(2)==card.getPin())
				{
					
					return true;
				}
			}
			throw new InputException("input wrong");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
