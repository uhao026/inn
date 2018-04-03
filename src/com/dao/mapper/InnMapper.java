package com.dao.mapper;

import com.bean.Inn;

public interface InnMapper {

	void registerInn(Inn inn);

	void hostRegister(Inn inn);

	Inn myInn(Inn inn);

}
