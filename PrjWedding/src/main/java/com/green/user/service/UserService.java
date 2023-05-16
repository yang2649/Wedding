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

	UserVo getAdminUserInfo(HashMap<String, Object> map);

	List getAdminUserList();

	List getAdminEstiList();

	List getAdminFavList();

	UserVo getUserById(String userId);

	void adminUpdate(HashMap<String, Object> map);

	void deleteUser(String memid);

	// 아이디 찾기
	UserVo FindId(String memname, String email);

	// 비밀번호 찾기
	UserVo FindPw(String memid, String email);

}
