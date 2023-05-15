package com.green.estimate.service.impl;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.estimate.dao.EstimateDao;
import com.green.estimate.service.EstimateService;
import com.green.estimate.vo.EstimateVo;
import com.green.user.vo.UserVo;


@Service("estimateService")
public class EstimateServiceImpl implements EstimateService{

	@Autowired
	private EstimateDao  estimateDao;
	
	@Override
	public void insertEstimate(EstimateVo estivo) {
		
		estimateDao.insertEstimate( estivo );
		System.out.println("service:" + estivo );
	}



	@Override
	public EstimateVo getHallid(String hallname) {
		
         EstimateVo estivo = estimateDao.getHallid( hallname );
		
		return estivo;
	}


	@Override
	public EstimateVo getCateringid(String cateringtype) {
		
		EstimateVo estivo = estimateDao.getCateringid( cateringtype );

		return estivo;
	}



	@Override
	public EstimateVo getDressid(String dressname) {
		
		EstimateVo estivo = estimateDao.getDressid( dressname );

		return estivo;
	}



	@Override
	public EstimateVo getstudioid(String studioname) 
	{
		EstimateVo estivo = estimateDao.getStudioid( studioname );

		return estivo;

	}



	@Override
	public List getHallList() {
		
		List  hallList = estimateDao.getHallList();
		
		return hallList;
		
	}



	@Override
	public List getDressList() {
		
		List  dressList = estimateDao.getDressList();
		
		return dressList;
		
	}



	@Override
	public List getCateringList() {
		
		List  cateringList = estimateDao.getCateringList();
		
		return cateringList;
	}



	@Override
	public List getStudioList() {
		
		List  studioList = estimateDao.getStudioList();
		
		return studioList;
	}
	

	@Override
	public EstimateVo getHallPrice(String hallname) {
	
		EstimateVo estivo = estimateDao.getHallPrice( hallname );
		
		return estivo;
			
	}



	@Override
	public EstimateVo getCateringPrice(String cateringtype) {
		
		EstimateVo estivo = estimateDao.getCateringPrice( cateringtype );
		
		return estivo;
	}



	@Override
	public EstimateVo getDressPrice(String dressname) {
		
		EstimateVo estivo = estimateDao.getDressPrice( dressname );
		
		return estivo;
	}



	@Override
	public EstimateVo getStudioPrice(String studioname) {
		
		EstimateVo estivo = estimateDao.getStudioPrice( studioname );
		
		return estivo;
	}

	
	
}
