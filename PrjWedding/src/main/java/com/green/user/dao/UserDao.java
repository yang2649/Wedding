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

	List getAdminUserList();

	List getAdminEstiList();

	List getAdminFavList();

	UserVo getAdminUserInfo(HashMap<String, Object> map);

	UserVo getUserById(String userId);

	void adminUpdate(HashMap<String, Object> map);

	void deleteUser(String memid);
	
	// 아이디 찾기
	UserVo FindId(String memname, String email);

	// 비밀번호 찾기
	UserVo FindPw(String memid, String email);



}
