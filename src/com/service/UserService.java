package com.service;

import com.bean.User;

public interface UserService {

	void register(User user);

	User login(User user);

	void modify(User user);

}
