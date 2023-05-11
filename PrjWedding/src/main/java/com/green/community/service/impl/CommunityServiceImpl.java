package com.green.community.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.community.dao.CommunityDao;
import com.green.community.service.CommunityService;
import com.green.community.vo.BoardFilesVo;
import com.green.community.vo.CommunityVo;
import com.green.community.vo.ComuFilesVo;



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

	@Override
	public List<CommunityVo> getdownList(HashMap<String, Object> map) {
		List<CommunityVo>   downList = communityDao.getdownList(map);
		return downList;
	}


	@Override
	public CommunityVo getdownload(HashMap<String, Object> map) {
		CommunityVo  communityVo  =  communityDao.getdownload(map); 
		return communityVo;
	}


	//자료실상세보기에서 파일 보기.
	@Override
	public List<ComuFilesVo> getFileList(HashMap<String, Object> map) {
		List<ComuFilesVo> fileList = communityDao.getFileList( map );
		return fileList;
	}


	@Override
	public void reviewWrite(HashMap<String, Object> map, HttpServletRequest request) {
		CommFile.save( map, request );
		communityDao.reviewWrite(map);		
	}


	@Override
	public List<CommunityVo> reviewList(HashMap<String, Object> map) {
		 List<CommunityVo> vo = communityDao.reviewList(map);
		 System.out.println("impl:" + vo);
		return vo;
	}


	@Override
	public List<BoardFilesVo> getEventList(HashMap<String, Object> map) {
		List<BoardFilesVo> eventList = communityDao.getEventList(map);
		return eventList;
	}


	@Override
	public void eventWrite(HashMap<String, Object> map, HttpServletRequest request) {
		CommFile.save( map, request );
		communityDao.eventWrite(map);	
	}


	@Override
	public void noticeupdate(HashMap<String, Object> map) {
		communityDao.noticeUpdate(map);
		
	}


	@Override
	public BoardFilesVo getEvent(HashMap<String, Object> map) {
		BoardFilesVo vo = communityDao.getEvent(map);
		return vo ;
	}


	@Override
	public void updateEvent(HashMap<String, Object> map) {
		communityDao.updateEvent(map);
		
	}


	@Override
	public void reviewDelete(HashMap<String, Object> map) {
		
		communityDao.reviewDelete(map);
		
		List<ComuFilesVo> fileList = (List<ComuFilesVo>) map.get("fileList");
		CommFile.delete(fileList);
		
	}


	@Override
	public void noticeDelete(HashMap<String, Object> map) {
		communityDao.noticeDelete(map);
		
	}


	@Override
	public void deleteEvent(HashMap<String, Object> map) {
		communityDao.deleteEvent(map);
		List<ComuFilesVo> fileList = (List<ComuFilesVo>) map.get("fileList");
		CommFile.delete(fileList);
	}


	@Override
	public void downloadUpdate(HashMap<String, Object> map) {
		communityDao.downloadUpdate(map);
		
	}


	@Override
	public void downloadDelete(HashMap<String, Object> map) {
		communityDao.downloadDelete(map);
		
	}


	@Override
	public void faqWrite(HashMap<String, Object> map) {
		communityDao.faqWrite(map);
		
	}


	@Override
	public CommunityVo getFaq(HashMap<String, Object> map) {
		CommunityVo vo = communityDao.getfaq(map);
		return vo;
	}


	@Override
	public void faqUpdate(HashMap<String, Object> map) {
	    communityDao.faqUpdate(map);
		
	}


	@Override
	public void faqDelete(HashMap<String, Object> map) {
		communityDao.faqDelete(map);
		
	}








	

}
