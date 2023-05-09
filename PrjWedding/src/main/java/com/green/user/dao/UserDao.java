package com.green.user.dao;

import java.util.HashMap;
import java.util.List;

import com.green.user.vo.UserVo;

public interface UserDao {

	void insertUser(UserVo user);

	UserVo getLogin(HashMap<String, Object> map);

	List getUserList();

	void updateUser(HashMap<String, Object> map);

	UserVo getUser(HashMap<String, Object> map);

	



}
