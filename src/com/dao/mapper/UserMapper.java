package com.dao.mapper;

import com.bean.User;

public interface UserMapper {

	void register(User user);

	User login(User user);

	void modify(User user);

}
