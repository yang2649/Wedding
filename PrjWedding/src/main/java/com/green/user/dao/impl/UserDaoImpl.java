package com.green.user.dao.impl;


import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.user.dao.UserDao;
import com.green.user.vo.UserVo;

@Repository("userDao")
public class UserDaoImpl implements UserDao {

	@Autowired
	private SqlSession  sqlSession;
	
	@Override
	public void insertUser(UserVo user) {
		
		// sqlSession  :  MyBatis 
		sqlSession.insert("User.UserInsert", user);		
	}

	@Override
	public UserVo getLogin(HashMap<String, Object> map) {
		UserVo  userVo = sqlSession.selectOne("User.GetLogin", map);
		return  userVo;
	}

	@Override
	public List getUserList() {
		
		List    userList  =  sqlSession.selectList("User.UserList"); 
		
		return  userList;
	}
	
	@Override
	public UserVo getUser(HashMap<String, Object> map) {
		
		UserVo  user = sqlSession.selectOne("User.GetUser", map);
		
		return user;
	}

	@Override
	public void updateUser(HashMap<String, Object> map) {
		
		sqlSession.update("User.UpdateUser", map );
		
	}



}
