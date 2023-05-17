package com.green.admin.dao.impl;


import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.admin.dao.AdminDao;
import com.green.admin.vo.AdminVo;

@Repository("adminDao")
public class AdminDaoImpl implements AdminDao {

	@Autowired
	private SqlSession  sqlSession;
	
	@Override
	public AdminVo getLogin(HashMap<String, Object> map) {
		AdminVo  adminVo = sqlSession.selectOne("Admin.GetLogin", map);
		return  adminVo;
	}

	@Override
	public List getAdminMemList() {
		
		List    adminMemList  =  sqlSession.selectList("Admin.AdminMemList"); 
		
		return  adminMemList;
	}
	
	@Override
	public List getAdminFavList() {
		
		List    adminFavList  =  sqlSession.selectList("Admin.AdminFavList"); 
		
		return  adminFavList;
	}

	@Override
	public List getAdminEstiList() {
		
		List    adminEstiList  =  sqlSession.selectList("Admin.AdminEstiList"); 
		
		return  adminEstiList;
	}

	@Override
	public AdminVo getMemInfoManager(HashMap<String, Object> map) {
		
		AdminVo  MemInfoManager = sqlSession.selectOne("Admin.MemInfoManager", map);
		
		return MemInfoManager;
	}
	
	@Override public AdminVo getMember(String memid) {
		
		AdminVo member = sqlSession.selectOne("Admin.GetMember", memid);
		
		return member; 
		
	}
	
	@Override
	public AdminVo getMemFavManager(HashMap<String, Object> map) {
		
		AdminVo  MemFavManager = sqlSession.selectOne("Admin.MemFavManager", map);
		
		return MemFavManager;
	}
	
	@Override
	public List<AdminVo> getMemFav(String favid) {
		
	    List<AdminVo> memfav = sqlSession.selectList("Admin.GetMemFav", favid);
	    
	    return memfav;
	}
	
	@Override
	public List<String> getFavIdByMemId(String memid) {
		
		List<String> favbymem = sqlSession.selectList("Admin.GetFavIdByMemId", memid);
		
		return favbymem;
	}
	
	@Override
	public AdminVo getMemEstiManager(HashMap<String, Object> map) {
		
		AdminVo  MemEstiManager = sqlSession.selectOne("Admin.MemEstiManager", map);
		
		return MemEstiManager;
	}
	
	@Override
	public List<AdminVo> getMemEsti(String estiid) {
		
		List<AdminVo> memesti = sqlSession.selectList("Admin.GetMemEsti", estiid);
		
		return memesti;
	}
	
	@Override
	public List<String> getEstiIdByMemId(String memid) {
		
		List<String> estibymem = sqlSession.selectList("Admin.GetEstiIdByMemId", memid);
		
		return estibymem;
	}
/*	
	@Override
	public AdminVo getMember(HashMap<String, Object> map) {
		
		AdminVo  member = sqlSession.selectOne("Admin.GetMember", map);
		
		return member;
	}
*/


	@Override
	public void adminUpdate(HashMap<String, Object> map) {

		System.out.println("daoimpl : " + map);
		sqlSession.update("Admin.AdminUpdate", map);
	}

	@Override
	public void deleteUser(String memid) {
		
		sqlSession.delete("Admin.UserDelete", memid );
	}

	@Override
	public void adminDeleteUser(String memid) {
		
		sqlSession.delete("Admin.AdminDelete", memid );
	}



}
