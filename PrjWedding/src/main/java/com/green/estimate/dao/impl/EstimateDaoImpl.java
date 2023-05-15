package com.green.estimate.dao.impl;



import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.estimate.dao.EstimateDao;
import com.green.estimate.vo.EstimateVo;

@Repository("estimateDao")
public class EstimateDaoImpl implements EstimateDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertEstimate(EstimateVo estivo) {
		
		sqlSession.insert("Estimate.InsertEstimate", estivo);
		System.out.println( estivo );
		
	}


	@Override
	public EstimateVo getHallid(String hallname) {
		
		EstimateVo estivo = sqlSession.selectOne("Estimate.GetHallid", hallname);
		
		return estivo;
	}



	@Override
	public EstimateVo getCateringid(String cateringtype) {
		
       EstimateVo estivo = sqlSession.selectOne("Estimate.GetCateringid", cateringtype);
		
		return estivo;
	}


	@Override
	public EstimateVo getDressid(String dressname) {
		
		EstimateVo estivo = sqlSession.selectOne("Estimate.GetDressid", dressname);
		
		return estivo;
	}


	@Override
	public EstimateVo getStudioid(String studioname) {

		EstimateVo estivo = sqlSession.selectOne("Estimate.GetStudioid", studioname);
		
		return estivo;
	}


	@Override
	public List getHallList() {
		
		List  hallList = sqlSession.selectList("Estimate.HallList");
		
		return hallList;
	}


	@Override
	public List getDressList() {
		
		List  dressList = sqlSession.selectList("Estimate.DressList");
		
		return dressList;
	}


	@Override
	public List getCateringList() {

		List  cateringList = sqlSession.selectList("Estimate.CateringList");
		
		return cateringList;
	}


	@Override
	public List getStudioList() {
		
		List  studioList = sqlSession.selectList("Estimate.StudioList");
		
		return studioList;
	}
}





