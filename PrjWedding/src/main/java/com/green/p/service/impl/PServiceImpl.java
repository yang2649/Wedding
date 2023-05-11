package com.green.p.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.p.dao.PDao;
import com.green.p.service.PService;
import com.green.p.vo.PVo;

// UserServiceImpl userService = new UserServiceImpl();

@Service("pService")
public class PServiceImpl implements PService {

	@Autowired
	private PDao  pDao;


@Override
	public void insertGGim(HashMap<String, Object> map) {
	System.out.println("asd"+map);
		 pDao.insertGGim(map);
	}


@Override
public PVo getPList(HashMap<String, Object> map) {
	PVo    dressList = pDao.getPList(map);
	
	return  dressList;
}
}
















