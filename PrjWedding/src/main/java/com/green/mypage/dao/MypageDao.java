package com.green.mypage.dao;

import java.util.List;

import com.green.mypage.vo.MypageVo;

public interface MypageDao {

	List<MypageVo> getEstiList(String memid);

	List<MypageVo> getFavList(String memid);

	void deleteMyesti(String estiid);

	
	
}
