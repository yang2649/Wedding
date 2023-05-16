package com.green.dress.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dress.dao.DressDao;
import com.green.dress.service.DressService;
import com.green.dress.vo.DressVo;

// UserServiceImpl userService = new UserServiceImpl();

@Service("dressService")
public class DressServiceImpl implements DressService {

	@Autowired
	private DressDao  dressDao;

	@Override
	public List<DressVo> getDressList(HashMap<String, Object> map) {
List<DressVo>    dressList = dressDao.getDressList(map);
		
		return  dressList;
	}

@Override
	public void insertfav(HashMap<String, Object> map) {
	System.out.println("asd"+map);
	dressDao.insertfav(map);
	}


@Override
public List<DressVo> getPList(HashMap<String, Object> map) {
	List<DressVo>    dressList = dressDao.getPList(map);
	System.out.println("asd"+map);
	return  dressList;
}


@Override
public void deletefav(DressVo vo) {
	dressDao.deletefav(vo);
	
}






}

















