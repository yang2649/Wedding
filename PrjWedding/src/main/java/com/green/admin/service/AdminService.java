package com.green.admin.service;

import java.util.HashMap;
import java.util.List;

import com.green.admin.vo.AdminVo;

public interface AdminService {
	
	AdminVo getLogin(HashMap<String, Object> map);
	
	List getAdminMemList();
	
	List getAdminFavList();
	
	List getAdminEstiList();
	
	AdminVo getMemInfoManager( HashMap<String, Object> map);

	AdminVo getMember(String memid);

	AdminVo getMemFavManager( HashMap<String, Object> map);

	List<AdminVo> getMemFav(String favid);
	
	List<String> getFavIdByMemId(String memid);

	AdminVo getMemEstiManager( HashMap<String, Object> map);
	
	List<AdminVo> getMemEsti(String favid);
	
	List<String> getEstiIdByMemId(String memid);

	/* AdminVo getMember( HashMap<String, Object> map ); */

	void adminUpdate(HashMap<String, Object> map);

	void deleteUser(String memid);

	void adminDeleteUser(String memid);

	
}
