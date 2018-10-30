package com.DAOInterfaces;

import java.sql.SQLException;
import java.util.ArrayList;

import com.Exceptions.*;
import com.beans.Location;
import com.beans.Login;
import com.beans.MenuItem;
import com.beans.User;

//DataAccessObject Interface for menu functionalities
//and for getting locations and menu items

public interface DaoInterface {
	boolean insertUser(User user) throws InputException;
	boolean insertLogin(Login login) throws InputException;
	boolean login(Login login) throws ServiceException;
	ArrayList<Location> getLocation() throws OutputException;
	ArrayList<MenuItem> getMenuItems() throws OutputException;
}
