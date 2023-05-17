package com.green.mypage.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.mypage.dao.MypageDao;
import com.green.mypage.vo.MypageVo;

@Repository("mypageDao")
public class MypageDaoImpl implements MypageDao {

	
	@Autowired
	private SqlSession sqlSession; 

	@Override
	public List<MypageVo> getEstiList(String memid) {
	
		List<MypageVo> estiList = sqlSession.selectList("Mypage.EstiList", memid);
		
		return estiList;
	}

	@Override
	public List<MypageVo> getFavList(String memid) {
		
		List<MypageVo> favList = sqlSession.selectList("Mypage.FavList", memid);
		
		return favList;
	}

	@Override
	public void deleteMyesti(String estiid) {
		
		sqlSession.delete("Mypage.MyestiDelete", estiid );
		
	}


}
