package com.green.community.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.community.dao.CommunityDao;
import com.green.community.service.CommunityService;
import com.green.community.vo.CommunityVo;
import com.green.pds.service.impl.PdsFile;


@Service("communityService")
public class CommunityServiceImpl implements CommunityService {

	@Autowired
	private  CommunityDao  communityDao;
	
	
	@Override
	public List<CommunityVo> getNoticeList(String menu_id) {
		
		List<CommunityVo> noticeList = communityDao.getNoticeList(menu_id);
		System.out.println("IMPL"+ noticeList);
		
		return noticeList;
	}


	@Override
	public void noticeWrite(HashMap<String, Object> map, HttpServletRequest request) {
		communityDao.noticeWrite(map);
		
	}


	@Override
	public CommunityVo getNotice(HashMap<String, Object> map) {
		CommunityVo  communityVo  =  communityDao.getNotice(map); 
		return communityVo;
	}


	@Override
	public List<CommunityVo> getdownList(String menu_id) {
		List<CommunityVo>   downList = communityDao.getdownList(menu_id);
		return downList;
	}


	@Override
	public void downWrite(
			HashMap<String, Object> map, 
			HttpServletRequest request) {
		
		CommFile.save( map, request );
		communityDao.downWrite(map);
		
	}


	@Override
	public List<CommunityVo> getfaqList(String menu_id) {
		List<CommunityVo> faqList = communityDao.getfaqList(menu_id);
		return faqList;
	}

}
