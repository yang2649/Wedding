package com.green.community.dao;

import java.util.HashMap;
import java.util.List;

import com.green.community.vo.CommunityVo;
import com.green.pds.vo.FilesVo;

public interface CommunityDao {

	List<CommunityVo> getNoticeList(String menu_id);

	void noticeWrite(HashMap<String, Object> map);

	CommunityVo getNotice(HashMap<String, Object> map);

	List<CommunityVo> getdownList(HashMap<String, Object> map);

	void downWrite(HashMap<String, Object> map);

	List<CommunityVo> getfaqList(String menu_id);

	CommunityVo getdownload(HashMap<String, Object> map);

	List<FilesVo> getFileList(HashMap<String, Object> map);

	void reviewWrite(HashMap<String, Object> map);

	List<CommunityVo> reviewList(HashMap<String, Object> map);

}
