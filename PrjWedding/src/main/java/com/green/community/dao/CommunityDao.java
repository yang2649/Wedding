package com.green.community.dao;

import java.util.HashMap;
import java.util.List;

import com.green.community.vo.BoardFilesVo;
import com.green.community.vo.CommunityVo;
import com.green.community.vo.ComuFilesVo;
import com.green.pds.vo.FilesVo;

public interface CommunityDao {

	List<CommunityVo> getNoticeList(String menu_id);

	void noticeWrite(HashMap<String, Object> map);

	CommunityVo getNotice(HashMap<String, Object> map);

	List<CommunityVo> getdownList(HashMap<String, Object> map);

	void downWrite(HashMap<String, Object> map);

	List<CommunityVo> getfaqList(String menu_id);

	CommunityVo getdownload(HashMap<String, Object> map);

	List<ComuFilesVo> getFileList(HashMap<String, Object> map);

	void reviewWrite(HashMap<String, Object> map);

	List<CommunityVo> reviewList(HashMap<String, Object> map);

	List<BoardFilesVo> getEventList(HashMap<String, Object> map);

	void eventWrite(HashMap<String, Object> map);

	void noticeUpdate(HashMap<String, Object> map);

	BoardFilesVo getEvent(HashMap<String, Object> map);

	void updateEvent(HashMap<String, Object> map);

	void reviewDelete(HashMap<String, Object> map);

	void noticeDelete(HashMap<String, Object> map);

	void deleteEvent(HashMap<String, Object> map);

	void downloadUpdate(HashMap<String, Object> map);

	void downloadDelete(HashMap<String, Object> map);

	void faqWrite(HashMap<String, Object> map);

	CommunityVo getfaq(HashMap<String, Object> map);

	void faqUpdate(HashMap<String, Object> map);

	void faqDelete(HashMap<String, Object> map);



	

}
