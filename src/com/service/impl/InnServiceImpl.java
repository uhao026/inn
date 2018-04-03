package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Inn;
import com.dao.mapper.InnMapper;
import com.service.InnService;

@Service
public class InnServiceImpl implements InnService{
	@Autowired
	private InnMapper innMapper;
	@Override
	public void registerInn(Inn inn) {
		// TODO Auto-generated method stub
		innMapper.registerInn(inn);
	}
	@Override
	public void hostRegister(Inn inn) {
		// TODO Auto-generated method stub
		innMapper.hostRegister(inn);
	}
	@Override
	public Inn myInn(Inn inn) {
		// TODO Auto-generated method stub
		return innMapper.myInn(inn);
	}

}
