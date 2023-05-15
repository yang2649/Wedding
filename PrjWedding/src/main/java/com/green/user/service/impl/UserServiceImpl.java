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



	@Override
	public List getUserList() {
		
		List    userList = userDao.getUserList();
		
		return userList;
	}

	
	@Override
	public UserVo getUser( HashMap<String, Object> map) {
		
		UserVo  user  =  userDao.getUser( map );
		
		return user;
	}


	@Override
	public void updateUser(HashMap<String, Object> map) {
		
		userDao.updateUser(map);
		
	}

	@Override
	public UserVo getAdminUserInfo(HashMap<String, Object> map) {
		
		UserVo  adminuserinfo  =  userDao.getAdminUserInfo( map );
		
		return adminuserinfo;
	}

	@Override
	public List getAdminUserList() {
		
		List    adminUserList = userDao.getAdminUserList();
		
		return adminUserList;
	}

	@Override
	public List getAdminEstiList() {
		
		List    adminEstiList = userDao.getAdminEstiList();
		
		return adminEstiList;
	}

	@Override
	public List getAdminFavList() {
		
		List    adminFavList = userDao.getAdminFavList();
		
		return adminFavList;
	}

	@Override
	public UserVo getUserById(String userId) {
		
		UserVo  userById  =  userDao.getUserById( userId );
		
		return userById;
	}

	@Override
	public void adminUpdate(HashMap<String, Object> map) {
		
		userDao.adminUpdate(map);
	}

	@Override
	public void deleteUser(String memid) {
		
		userDao.deleteUser( memid );
		
	}



	



	



	


}















