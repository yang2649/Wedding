package com.green.community.dao;

import java.util.HashMap;
import java.util.List;

import com.green.community.vo.CommunityVo;

public interface CommunityDao {

	List<CommunityVo> getNoticeList(String menu_id);

	void noticeWrite(HashMap<String, Object> map);

	CommunityVo getNotice(HashMap<String, Object> map);

	List<CommunityVo> getdownList(String menu_id);

	void downWrite(HashMap<String, Object> map);

	List<CommunityVo> getfaqList(String menu_id);
}
