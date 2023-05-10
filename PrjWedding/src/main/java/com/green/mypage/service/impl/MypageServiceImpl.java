package com.green.mypage.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.mypage.dao.MypageDao;
import com.green.mypage.service.MypageService;
import com.green.mypage.vo.MypageVo;

@Service("mypageService")
public class MypageServiceImpl implements MypageService {


	@Autowired
	private MypageDao mypageDao;
	
	@Override
	public List<MypageVo> getEstiList(String memid) {
		
		List<MypageVo> estiList = mypageDao.getEstiList( memid );
		
		return estiList;
	}

}
