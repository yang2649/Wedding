package com.green.estimate.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.estimate.dao.EstimateDao;
import com.green.estimate.service.EstimateService;
import com.green.estimate.vo.EstimateVo;


@Service("estimateService")
public class EstimateServiceImpl implements EstimateService{

	@Autowired
	private EstimateDao  estimateDao;
	
	@Override
	public void insertEsti(EstimateVo estivo) {
		
		estimateDao.insertEsti( estivo );
	}

	
	
	

}
