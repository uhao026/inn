package com.service;

import com.bean.Inn;

public interface InnService {

	void registerInn(Inn inn);

	void hostRegister(Inn inn);

	Inn myInn(Inn inn);

}
