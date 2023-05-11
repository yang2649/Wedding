package com.green.dress.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dress.dao.DressDao;
import com.green.dress.service.DressService;
import com.green.p.vo.PVo;

// UserServiceImpl userService = new UserServiceImpl();

@Service("dressService")
public class DressServiceImpl implements DressService {

	@Autowired
	private DressDao  dressDao;



	@Override
	public List<PVo> getDressList(HashMap<String, Object> map) {
List<PVo>    dressList = dressDao.getDressList(map);
		
		return  dressList;
	}
	
	
}















