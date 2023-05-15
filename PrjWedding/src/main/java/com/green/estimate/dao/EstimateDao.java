package com.green.estimate.dao;



import java.util.List;

import com.green.estimate.vo.EstimateVo;

public interface EstimateDao {

	void insertEstimate(EstimateVo estivo);

	EstimateVo getHallid(String hallname);

	EstimateVo getCateringid(String cateringtype);

	EstimateVo getDressid(String dressname);

	EstimateVo getStudioid(String studioname);

	List getHallList();

	List getDressList();

	List getCateringList();

	List getStudioList();

	EstimateVo getHallPrice(String hallname);

	EstimateVo getCateringPrice(String cateringtype);

	EstimateVo getDressPrice(String dressname);

	EstimateVo getStudioPrice(String studioname);

// 
	 
	
}
