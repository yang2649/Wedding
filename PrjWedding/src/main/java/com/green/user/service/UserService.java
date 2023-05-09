package com.green.user.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.green.user.vo.UserVo;

public interface UserService {

	void insertUser(UserVo user);

	UserVo getLogin(HashMap<String, Object> map);
	
	List getUserList();

	void updateUser(HashMap<String, Object> map);

	UserVo getUser(HashMap<String, Object> map);

}
