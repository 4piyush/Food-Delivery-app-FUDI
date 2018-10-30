package com.Services;

import com.beans.Login;
import com.beans.User;

public interface SignUpInterface {
	boolean createUser(User user,Login login);
}
