package com.green.user.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.community.vo.CommunityVo;
import com.green.user.dao.UserDao;
import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

// UserServiceImpl userService = new UserServiceImpl();

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public void insertUser(UserVo user) {

		userDao.insertUser(user);

	}

	@Override
	public UserVo getLogin(HashMap<String, Object> map) {

		UserVo userVo = userDao.getLogin(map);

		return userVo;
	}

	@Override
	public List getUserList() {

		List userList = userDao.getUserList();

		return userList;
	}

	@Override
	public UserVo getUser(HashMap<String, Object> map) {

		UserVo user = userDao.getUser(map);

		return user;
	}

	@Override
	public void updateUser(HashMap<String, Object> map) {

		userDao.updateUser(map);

	}

	@Override
	public UserVo getUserById(String userId) {

		UserVo userById = userDao.getUserById(userId);

		return userById;
	}

	@Override
	public void deleteUser(String memid) {

		userDao.deleteUser(memid);

	}

	// 아이디 찾기
	@Override
	public UserVo FindId(String memname, String email) {
		return userDao.FindId(memname, email);
	}

	// 비밀번호 찾기

	@Override
	public UserVo FindPw(String memid, String email) {
		return userDao.FindPw(memid, email);
	}

}
