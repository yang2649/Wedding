package com.green.community.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.green.community.vo.CommunityVo;
import com.green.pds.vo.FilesVo;


public interface CommunityService {

//-------------------------------공지사항
	List<CommunityVo> getNoticeList(String menu_id);

	void noticeWrite(HashMap<String, Object> map, HttpServletRequest request);

	CommunityVo getNotice(HashMap<String, Object> map);
	
	//--------------------------

	List<CommunityVo> getdownList(HashMap<String, Object> map);

	void downWrite(HashMap<String, Object> map, HttpServletRequest request);

	CommunityVo getdownload(HashMap<String, Object> map);
	//-------------------------------------

	List<CommunityVo> getfaqList(String menu_id);

	List<FilesVo> getFileList(HashMap<String, Object> map);
}

