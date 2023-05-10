package com.green.mypage.service;

import java.util.List;

import com.green.mypage.vo.MypageVo;

public interface MypageService {

	List<MypageVo> getEstiList(String memid);

}
