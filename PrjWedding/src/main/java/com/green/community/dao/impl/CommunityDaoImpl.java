package com.green.community.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.community.dao.CommunityDao;
import com.green.community.vo.CommunityVo;
import com.green.pds.vo.FilesVo;

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
	public List<CommunityVo> getdownList(String menu_id) {
		List<CommunityVo> downList = sqlSession.selectList("Community.DownList", menu_id);
		return downList;
	}

	@Override
	public void downWrite(HashMap<String, Object> map) {
		// Files  에 저장
				List<FilesVo>  fileList =  (List<FilesVo>) map.get("fileList");
				if( fileList.size() != 0  )
					sqlSession.insert("Community.FileInsert", map);
			
				// db 정보 저장
				sqlSession.insert("Community.DowmInsert", map);
	}

	@Override
	public List<CommunityVo> getfaqList(String menu_id) {
		 List<CommunityVo> faqList = sqlSession.selectList("Community.FaqList", menu_id);
		return faqList;
	}



}
