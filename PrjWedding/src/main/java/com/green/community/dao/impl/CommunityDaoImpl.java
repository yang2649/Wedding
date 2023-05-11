package com.green.community.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.community.dao.CommunityDao;
import com.green.community.vo.BoardFilesVo;
import com.green.community.vo.CommunityVo;
import com.green.community.vo.ComuFilesVo;


@Repository("communityDao")
public class CommunityDaoImpl implements CommunityDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<CommunityVo> getNoticeList(String menu_id) {
		
		List<CommunityVo> noticeList = sqlSession.selectList("Community.NoticeList", menu_id);
		
		System.out.println( "DAO" + noticeList);
		return noticeList;
	}

	@Override
	public void noticeWrite(HashMap<String, Object> map) {
		sqlSession.insert("Community.NoticeInsert", map);
		
	}

	@Override
	public CommunityVo getNotice(HashMap<String, Object> map) {
		
		// 조회수 증가 (Board table readcount++)
		sqlSession.update("Board.UpdateReadCount", map);
				
		System.out.println("글보기" + map);
		CommunityVo communityVo = sqlSession.selectOne("Community.getNotice", map);
		System.out.println( communityVo);
		
		return communityVo;
	}

	@Override
	public void downWrite(HashMap<String, Object> map) {
		
		System.out.println(map);
		// db 정보 저장
		sqlSession.insert("Community.DowmInsert", map);

				// Files  에 저장
				List<ComuFilesVo>  fileList =  (List<ComuFilesVo>) map.get("fileList");
				if( fileList.size() != 0  )
					sqlSession.insert("Community.FileInsert", map);
				
	}
	
	@Override
	public List<CommunityVo> getdownList(HashMap<String, Object> map) {
		List<CommunityVo> downList = sqlSession.selectList("Community.DownList", map);
		return downList;
	}
	
	
//-----faq---------------------
	@Override
	public List<CommunityVo> getfaqList(String menu_id) {
		 List<CommunityVo> faqList = sqlSession.selectList("Community.FaqList", menu_id);
		return faqList;
	}

	@Override
	public CommunityVo getdownload(HashMap<String, Object> map) {
		
		sqlSession.update("Board.UpdateReadCount", map);
		
		System.out.println("글보기" + map);
		CommunityVo communityVo = sqlSession.selectOne("Community.GetDownload", map);
		System.out.println( communityVo);
		
		return communityVo;
	}

	@Override
	public List<ComuFilesVo> getFileList(HashMap<String, Object> map) {
		List<ComuFilesVo> fileList = sqlSession.selectList("Community.PdfFilesList", map );

		return fileList;
	}

	@Override
	public void reviewWrite(HashMap<String, Object> map) {
		
		sqlSession.insert("Community.ReviewWrite", map);
		
		List<ComuFilesVo>  fileList =  (List<ComuFilesVo>) map.get("fileList");
		if( fileList.size() != 0  )
			sqlSession.insert("Community.FileInsert", map);
		
		
	}

	@Override
	public List<CommunityVo> reviewList(HashMap<String, Object> map) {
		List<CommunityVo> vo = sqlSession.selectList("Community.ReviewList", map);
		System.out.println("ddddddddddddddddddddao" + vo);
		
		return vo;
	}
	

	@Override
	public List<BoardFilesVo> getEventList(HashMap<String, Object> map) {
		List<BoardFilesVo> eventList = sqlSession.selectList("Community.EventList",map);
		System.out.println("eventList:" + eventList);
		return eventList;
	}

	@Override
	public void eventWrite(HashMap<String, Object> map) {
		sqlSession.insert("Community.EventWrite", map);
		
		List<ComuFilesVo>  fileList =  (List<ComuFilesVo>) map.get("fileList");
		if( fileList.size() != 0  )
			sqlSession.insert("Community.FileInsert", map);
		
	}

	@Override
	public void noticeUpdate(HashMap<String, Object> map) {
		sqlSession.update("Community.NoticeUpdate", map);
		
	}

	@Override
	public BoardFilesVo getEvent(HashMap<String, Object> map) {
		BoardFilesVo vo = sqlSession.selectOne("Community.GetEvent", map) ;
		System.out.println(map);
		return vo;
	}

	@Override
	public void updateEvent(HashMap<String, Object> map) {
	    System.out.println(map);
		sqlSession.update("Community.UpdateEvent", map );
		
	}

	@Override
	public void reviewDelete(HashMap<String, Object> map) {
	
		List<ComuFilesVo> fileList = getFileList(map);
		map.put("fileList", fileList );   //정보를 뽑아내서
		 System.out.println("다오임플리먼트 리뷰삭제" + map);
		sqlSession.delete("Community.FileDelete", map);
		sqlSession.delete("Community.ReviewDelete", map);
		
	}

	@Override
	public void noticeDelete(HashMap<String, Object> map) {
		sqlSession.delete("Community.NoticeDelete" , map );
		
	}

	@Override
	public void deleteEvent(HashMap<String, Object> map) {
		List<ComuFilesVo> fileList = getFileList(map);
		map.put("fileList", fileList );   //정보를 뽑아내서
		 
		sqlSession.delete("Community.FileDelete", map);
		sqlSession.delete("Community.EventDelete", map);
		
	}

	@Override
	public void downloadUpdate(HashMap<String, Object> map) {
		
		System.out.println("다오맵" +map);
		sqlSession.update("Community.DownUpdate", map);
		
	}

	@Override
	public void downloadDelete(HashMap<String, Object> map) {
		sqlSession.delete("Community.DownDelete", map);
		
	}

	@Override
	public void faqWrite(HashMap<String, Object> map) {
		sqlSession.insert("Community.FaqInsert", map);
		
	}

	@Override
	public CommunityVo getfaq(HashMap<String, Object> map) {
		CommunityVo vo = sqlSession.selectOne("Community.GetFaq", map);
		return vo;
	}

	@Override
	public void faqUpdate(HashMap<String, Object> map) {
		sqlSession.update("Community.FaqUpdate" , map);
		
	}

	@Override
	public void faqDelete(HashMap<String, Object> map) {
		sqlSession.delete("Community.FaqDelete", map);
		
	}

	







}
