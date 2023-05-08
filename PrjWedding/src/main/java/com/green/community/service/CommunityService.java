package com.green.community.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.green.community.vo.CommunityVo;


public interface CommunityService {


	List<CommunityVo> getNoticeList(String menu_id);

	void noticeWrite(HashMap<String, Object> map, HttpServletRequest request);

	CommunityVo getNotice(HashMap<String, Object> map);

	List<CommunityVo> getdownList(String menu_id);

	void downWrite(HashMap<String, Object> map, HttpServletRequest request);

	List<CommunityVo> getfaqList(String menu_id);
}

