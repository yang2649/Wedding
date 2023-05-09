package com.green.user.service;

import java.util.HashMap;

import com.green.user.vo.UserVo;

public interface UserService {

	void insertUser(UserVo user);

	UserVo getLogin(HashMap<String, Object> map);

}
