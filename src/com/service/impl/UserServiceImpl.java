package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.User;
import com.dao.mapper.UserMapper;
import com.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;

	public void register(User user) {
		// TODO Auto-generated method stub
		userMapper.register(user);
	}

	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return userMapper.login(user);
	}

	@Override
	public void modify(User user) {
		// TODO Auto-generated method stub
		userMapper.modify(user);
	}

}
