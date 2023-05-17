package com.green.admin.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.admin.dao.AdminDao;
import com.green.admin.service.AdminService;
import com.green.admin.vo.AdminVo;

// AdminServiceImpl adminService = new AdminServiceImpl();

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao  adminDao;
	

	@Override
	public AdminVo getLogin(HashMap<String, Object> map) {
		
		AdminVo  adminVo  =  adminDao.getLogin( map );
		
		return  adminVo;
	}
	
	@Override
	public List getAdminMemList() {
		
		List    adminMemList = adminDao.getAdminMemList();
		
		return adminMemList;
	}
	
	@Override
	public List getAdminFavList() {
		
		List    adminFavList = adminDao.getAdminFavList();
		
		return adminFavList;
	}
	
	@Override
	public List getAdminEstiList() {
		
		List    adminEstiList = adminDao.getAdminEstiList();
		
		return adminEstiList;
	}
	
	@Override
	public AdminVo getMemInfoManager(HashMap<String, Object> map) {
		
		AdminVo  memInfoManager  =  adminDao.getMemInfoManager( map );
		
		return memInfoManager;
	}
	
	@Override public AdminVo getMember(String memid) {
		
		AdminVo member = adminDao.getMember( memid );
		
		return member; 
		
	}

	@Override
	public AdminVo getMemFavManager(HashMap<String, Object> map) {
		
		AdminVo  memFavManager  =  adminDao.getMemFavManager( map );
		
		return memFavManager;
	}
	
	@Override public List<AdminVo> getMemFav(String favid) {
		
		List<AdminVo> memfav = adminDao.getMemFav( favid );
		
		return memfav; 
		
	}

	@Override public List<String> getFavIdByMemId(String memid) {
		
		List<String> favbymem = adminDao.getFavIdByMemId( memid );
		
		return favbymem; 
		
	}
	
	@Override
	public AdminVo getMemEstiManager(HashMap<String, Object> map) {
		
		AdminVo  memEstiManager  =  adminDao.getMemEstiManager( map );
		
		return memEstiManager;
	}
	
	@Override public List<AdminVo> getMemEsti(String estiid) {
		
		List<AdminVo> memesti = adminDao.getMemEsti( estiid );
		
		return memesti; 
		
	}
	
	@Override public List<String> getEstiIdByMemId(String memid) {
		
		List<String> estibymem = adminDao.getEstiIdByMemId( memid );
		
		return estibymem; 
		
	}
	
/*	@Override
	public AdminVo getMember( HashMap<String, Object> map) {
		
		AdminVo  member  =  adminDao.getMember( map );
		
		return member;
	}
*/

	@Override
	public void adminUpdate(HashMap<String, Object> map) {
		
		adminDao.adminUpdate(map);
	}

	@Override
	public void deleteUser(String memid) {
		
		adminDao.deleteUser( memid );
		
	}

	@Override
	public void adminDeleteUser(String memid) {
		
		adminDao.adminDeleteUser( memid );
		
	}

}















