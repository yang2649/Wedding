package com.green.user.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.user.dao.UserDao;
import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

// UserServiceImpl userService = new UserServiceImpl();

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao  userDao;
	
	@Override
	public void insertUser(UserVo user) {
		
		userDao.insertUser( user );
		
	}


	@Override
	public UserVo getLogin(HashMap<String, Object> map) {
		UserVo  userVo  =  userDao.getLogin( map );
		return  userVo;
	}
	
}















