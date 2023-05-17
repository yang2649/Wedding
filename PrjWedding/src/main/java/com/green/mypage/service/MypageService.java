package com.green.mypage.service;

import java.util.List;

import com.green.mypage.vo.MypageVo;

public interface MypageService {

	List<MypageVo> getEstiList(String memid);

	List<MypageVo> getFavList(String memid);

	void deleteMyesti(String estiid);

}
 

