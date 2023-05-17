package com.green.admin.dao;

import java.util.HashMap;
import java.util.List;

import com.green.admin.vo.AdminVo;


public interface AdminDao {
	
	AdminVo getLogin(HashMap<String, Object> map);

	List getAdminMemList();
	
	List getAdminEstiList();
	
	List getAdminFavList();
	
	AdminVo getMemInfoManager(HashMap<String, Object> map);

	AdminVo getMember(String memid); 

	AdminVo getMemFavManager(HashMap<String, Object> map);

	List<AdminVo> getMemFav(String favid); 

	List<String> getFavIdByMemId(String favid); 
	
	AdminVo getMemEstiManager(HashMap<String, Object> map);
	
	List<AdminVo> getMemEsti(String favid); 
	
	List<String> getEstiIdByMemId(String favid); 
	
	/* AdminVo getMember(HashMap<String, Object> map); */


	void adminUpdate(HashMap<String, Object> map);

	void deleteUser(String memid);

	void adminDeleteUser(String memid);
	
	



}
